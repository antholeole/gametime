
use std::{future::{ready, Ready}, rc::Rc, env};
use actix_web::{
    dev::{self, Service, ServiceRequest, ServiceResponse, Transform},
    Error
};
use futures_util::future::LocalBoxFuture;
use crate::errors::ServerError;

pub struct WebhookSecret;

impl<S: 'static, B> Transform<S, ServiceRequest> for WebhookSecret
where
    S: Service<ServiceRequest, Response = ServiceResponse<B>, Error = Error>,
    S::Future: 'static,
    B: 'static,
{
    type Response = ServiceResponse<B>;
    type Error = Error;
    type InitError = ();
    type Transform = WebhookSecretMiddleware<S>;
    type Future = Ready<Result<Self::Transform, Self::InitError>>;

    fn new_transform(&self, service: S) -> Self::Future {
        ready(Ok(WebhookSecretMiddleware {
            service: Rc::new(service),
        }))
    }
}

const WEBHOOK_SECRET_KEY_HEADER_KEY: &str = "WEBHOOK_SECRET_KEY";

pub struct WebhookSecretMiddleware<S> {
    service: Rc<S>,
}

impl<S, B> Service<ServiceRequest> for WebhookSecretMiddleware<S>
where
    S: Service<ServiceRequest, Response = ServiceResponse<B>, Error = Error> + 'static,
    S::Future: 'static,
    B: 'static,
{
    type Response = ServiceResponse<B>;
    type Error = Error;
    type Future = LocalBoxFuture<'static, Result<Self::Response, Self::Error>>;

    dev::forward_ready!(service);

    fn call(&self, req: ServiceRequest) -> Self::Future {
        let svc = self.service.clone();

        Box::pin(async move {
            let webhook_secret = env::var(WEBHOOK_SECRET_KEY_HEADER_KEY).map_err(ServerError::from)?;

            match req.headers().get(WEBHOOK_SECRET_KEY_HEADER_KEY).ok_or(ServerError::UnauthenticatedError)?.to_str() {
                Ok(val) => if val != webhook_secret { Err(ServerError::UnauthenticatedError) } else { Ok(()) },
                Err(_) => Err(ServerError::UnauthenticatedError)
            }?;

            Ok(svc.call(req).await?)
        })
    }
}

#[cfg(test)]
mod tests {
    use actix_web::{test, App, get, Responder, HttpResponse, dev::Service};

    use crate::{webhook_secret_middleware::WEBHOOK_SECRET_KEY_HEADER_KEY};

    const RESP_STR: &str = "responded";
    const WEBHOOK_SECRET_KEY: &str = "SECRET KEY";

    #[get("/")]
    async fn hello() -> impl Responder {
        HttpResponse::Ok().body(RESP_STR)
    }

    #[actix_web::test]
    async fn test_accept_correct_header() {
        std::env::set_var("WEBHOOK_SECRET_KEY", WEBHOOK_SECRET_KEY);

        let app = test::init_service(App::new()
            .wrap(super::WebhookSecret)
            .service(hello)
        ).await;

        let req = test::TestRequest::get()
            .uri("/")
            .append_header((WEBHOOK_SECRET_KEY_HEADER_KEY, WEBHOOK_SECRET_KEY))
            .to_request();

        let resp = test::call_service(&app, req).await;

        assert_eq!(resp.status(), 200);
    }

    #[actix_web::test]
    async fn test_deny_wrong_header() {
        std::env::set_var("WEBHOOK_SECRET_KEY", WEBHOOK_SECRET_KEY);

        let app = test::init_service(App::new()
            .wrap(super::WebhookSecret)
            .service(hello)
        ).await;

        let req = test::TestRequest::get()
            .uri("/")
            .append_header((WEBHOOK_SECRET_KEY_HEADER_KEY, "Other header"))
            .to_request();

        let resp = app.call(req).await;
        assert!(resp.is_err());
    }

    #[actix_web::test]
    async fn test_deny_no_header() {
        std::env::set_var("WEBHOOK_SECRET_KEY", WEBHOOK_SECRET_KEY);

        let app = test::init_service(App::new()
            .wrap(super::WebhookSecret)
            .service(hello)
        ).await;

        let req = test::TestRequest::get().uri("/").to_request();
        let resp = app.call(req).await;

        assert!(resp.is_err());
    }
}
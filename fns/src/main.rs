mod aux;
mod routers;
mod services;

use actix_web::{HttpServer, App, middleware, web::Data};

use routers::*;

use aux::webhook_secret_middleware::WebhookSecret;
use services::jwt::{JwtService, sign_jwt::JwtServiceImpl};

type GqlUuid = uuid::Uuid;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::init_from_env(env_logger::Env::new().default_filter_or("info"));

    HttpServer::new(move || {
        let jwt_service = Box::new(JwtServiceImpl::new().unwrap());
        let hasura_service = Box::new();

        App::new()
            .wrap(middleware::Compress::default())
            .wrap(WebhookSecret)
            .wrap(middleware::Logger::default())
            .app_data(Data::new(reqwest::Client::new()))
            .app_data(Data::new(jwt_service))
            .configure(auth::authenticate_config)
    })
    .bind(("0.0.0.0", 3000))?
    .run()
    .await
}
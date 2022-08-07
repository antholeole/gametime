mod webhook_secret_middleware;

mod errors;
mod auth;

use webhook_secret_middleware::WebhookSecret;

use actix_web::{HttpServer, App, HttpResponse, post, Responder};


#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .wrap(WebhookSecret)
            .service(web::scope("/auth").configure(scoped_config))
    })
    .bind(("0.0.0.0", 3000))?
    .run()
    .await
}
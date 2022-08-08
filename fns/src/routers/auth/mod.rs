use actix_web::web;

mod authenticate;

pub fn authenticate_config(cfg: &mut web::ServiceConfig) {
    cfg.service(
        web::scope("/auth")
            .service(authenticate::authenticate));
}
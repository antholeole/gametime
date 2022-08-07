use actix_web::{HttpResponse, http::StatusCode};
use derive_more::Display;

#[derive(Debug, Display)]
pub enum ServerError {
    #[display(fmt = "Environment Error")]
    EnvironmentError,
    #[display(fmt = "Unauthenticated")]
    UnauthenticatedError

}

impl actix_web::error::ResponseError for ServerError {
    fn error_response(&self) -> HttpResponse {
        match self {
            ServerError::EnvironmentError => HttpResponse::InternalServerError().json("Environment Error."),
            ServerError::UnauthenticatedError => HttpResponse::Unauthorized().finish()
        }
    }

    fn status_code(&self) -> StatusCode {
        match self {
            ServerError::EnvironmentError => StatusCode::INTERNAL_SERVER_ERROR,
            ServerError::UnauthenticatedError => StatusCode::UNAUTHORIZED
        }
    }
}

impl From<std::env::VarError> for ServerError {
    fn from(_: std::env::VarError) -> ServerError {
        ServerError::EnvironmentError
    }
}
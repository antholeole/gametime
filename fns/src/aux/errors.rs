use actix_web::{HttpResponse, http::StatusCode, HttpResponseBuilder};
use derive_more::Display;
use hmac::digest::InvalidLength;
use serde::{Deserialize, Serialize};

#[derive(Debug, Display)]
pub enum ServerError {
    #[display(fmt = "Environment Error")]
    EnvironmentError,
    #[display(fmt = "Unauthenticated")]
    UnauthenticatedError,
    #[display(fmt = "Internal HTTP Error")]
    InternalHTTPError(reqwest::Error),
    #[display(fmt = "Bad JWT HMAC Key: Invalid length")]
    BadHmacKeyError,
    #[display(fmt = "Unexpected null Field in Hasura Response")]
    UnexpectedNullError(String),
    #[display(fmt = "Custom Error")]
    Custom(String, u16),
}

const ERROR_RESPONSE_CODE: u16 = 400;

#[derive(Serialize, Deserialize)]
struct HasuraErrorMessageExtensions {
    code: String
}

#[derive(Serialize, Deserialize)]
struct HasuraErrorMessage {
    message: String,
    code: String,
    extensions: HasuraErrorMessageExtensions,
}

impl HasuraErrorMessage {
    fn new(message: String, code: String) -> HasuraErrorMessage {
        HasuraErrorMessage {
            message,
            code: code.clone(),
            extensions: HasuraErrorMessageExtensions { code }
        }
    }
}

impl actix_web::error::ResponseError for ServerError {
    fn error_response(&self) -> HttpResponse {
        let message = match self {
            ServerError::EnvironmentError => "Environment Error.".to_string(),
            ServerError::InternalHTTPError(reqwest_error) => reqwest_error.to_string(),
            ServerError::UnexpectedNullError(field) => format!("Hasura responded with unexpected null for field {}", field),
            ServerError::Custom(message, _) => message.to_string(),
            other => other.to_string(),
        };

        HttpResponseBuilder::new(StatusCode::from_u16(ERROR_RESPONSE_CODE).unwrap()).json(
            HasuraErrorMessage::new(message, self.status_code().to_string())
        )
    }

    fn status_code(&self) -> StatusCode {
        match self {
            ServerError::UnauthenticatedError => StatusCode::UNAUTHORIZED,
            ServerError::Custom(_, code) => StatusCode::from_u16(*code).unwrap(),
            _ => StatusCode::INTERNAL_SERVER_ERROR
        }
    }
}

impl From<std::env::VarError> for ServerError {
    fn from(_: std::env::VarError) -> ServerError {
        ServerError::EnvironmentError
    }
}

impl From<reqwest::Error> for ServerError {
    fn from(reqwest_error: reqwest::Error) -> ServerError {
        ServerError::InternalHTTPError(reqwest_error)
    }
}

impl From<InvalidLength> for ServerError {
    fn from(_: InvalidLength) -> ServerError {
        ServerError::BadHmacKeyError
    }
}
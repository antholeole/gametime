use crate::aux::errors::ServerError;

pub mod claims;
pub mod sign_jwt;

use claims::JwtClaims;

#[mockall::automock]
pub trait JwtService {
    fn sign_access_token(&self, claims: JwtClaims) -> Result<String, ServerError>;
    fn decode_access_token(&self, access_token: String) -> Result<JwtClaims, ServerError>;
}
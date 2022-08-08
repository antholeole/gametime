use std::env;

use hmac::{Hmac, Mac};
use jwt::SignWithKey;
use sha2::Sha256;

use crate::aux::errors::ServerError;

use super::claims::JwtClaims;
use super::JwtService;

const JWT_SECRET_ENV_KEY: &str = "JWT_SECRET";

pub struct JwtServiceImpl {
    jwt_key: Hmac<Sha256>
}

impl JwtServiceImpl {
    pub fn new() -> Result<impl JwtService, ServerError> {
        let jwt_key: Hmac<Sha256> = Hmac::new_from_slice(
            env::var(JWT_SECRET_ENV_KEY)
                .map_err(ServerError::from)?
                .as_bytes()
        ).map_err(ServerError::from)?;

        Ok(JwtServiceImpl {
            jwt_key
        })
    }
}

impl JwtService for JwtServiceImpl {
    fn sign_access_token(&self, claims: JwtClaims) -> Result<String, ServerError> {
        Ok(claims.sign_with_key(&self.jwt_key).expect("error signing Jwt"))
    }

    fn decode_access_token(&self, access_token: String) -> Result<JwtClaims, ServerError> {
        todo!()
    }
}
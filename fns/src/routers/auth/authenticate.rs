use std::env;
use actix_web::{post, Result, web::{self, Data}};
use reqwest::Client;
use graphql_client::GraphQLQuery;
use crate::{aux::errors::ServerError, services::jwt::{JwtService, claims::JwtClaims}};
use serde::{Deserialize, Serialize};
use crate::aux::hasura::{HasuraRequest, send_hasura_query};
use crate::GqlUuid as uuid;

const ADMIN_LOGIN_SECRET_ENV_KEY: &str = "ADMIN_LOGIN_SECRET";
const USER_LOGIN_SECRET_ENV_KEY: &str = "USER_LOGIN_SECRET";

#[derive(Deserialize, Serialize)]
struct Token {
    token: String
}

#[derive(GraphQLQuery)]
#[graphql(
    schema_path = "src/schema.graphql",
    query_path = "src/routers/auth/queries/create_user.graphql",
)]
pub struct CreateUser;

#[derive(Deserialize, Serialize)]
struct SuccessfulAuth {
    access_token: String,
    refresh_token: String
}

#[post("/authenticate")]
async fn authenticate<'a> (
    token: web::Json<HasuraRequest<Token>>,
    jwt_service: Data<Box<dyn JwtService>>,
    client: Data<Client>
) -> Result<web::Json<SuccessfulAuth>> {
    let admin_secret = env::var(ADMIN_LOGIN_SECRET_ENV_KEY).map_err(ServerError::from)?;
    let user_secret = env::var(USER_LOGIN_SECRET_ENV_KEY).map_err(ServerError::from)?;

    let user_token = token.into_inner().input.token;

    let admin = if user_token == admin_secret {
        Ok(true)
    } else if user_token == user_secret {
        Ok(false)
    } else {
        Err(ServerError::Custom("Invalid Token".to_owned(), 400))
    }?;


    let res = send_hasura_query::<CreateUser>(&client, create_user::Variables {
        admin
    }).await?
        .data.ok_or(ServerError::UnexpectedNullError("data".to_owned()))?
        .insert_private_users_one
        .ok_or(ServerError::UnexpectedNullError("insert_private_users_one".to_owned()))?;


    Ok(web::Json(SuccessfulAuth {
        access_token: jwt_service.into_inner().sign_access_token(JwtClaims {
            admin,
            user_id: res.id
        })?,
        refresh_token: res.refresh_token
    }))
}


use std::env;

use crate::aux::errors::ServerError;
use graphql_client::GraphQLQuery;
use serde::{Serialize, Deserialize};

use super::HasuraService;


#[derive(Serialize, Deserialize)]
pub struct HasuraRequest<T> {
    pub input: T
}

const HASURA_ENDPOINT_KEY: &str = "HASURA_ENDPOINT";
const HASURA_SECRET_KEY: &str = "HASURA_ADMIN_SECRET";
const HASURA_ADMIN_HEADER_KEY: &str = "x-hasura-admin-secret";

pub struct HasuraServiceImpl {
    url: String,
    secret: String,
}

impl HasuraServiceImpl {
    pub fn new() -> Result<impl HasuraService, ServerError> {
        let url = env::var(HASURA_ENDPOINT_KEY).map_err(ServerError::from)?;
        let secret = env::var(HASURA_SECRET_KEY).map_err(ServerError::from)?;

        HasuraServiceImpl {
            secret,
            url
        }
    }
}


impl HasuraService for HasuraServiceImpl {
    fn send_hasura_query< 'a, 'life0, 'async_trait,Q, >(client: & 'life0 reqwest::Client,variables:Q::Variables,) ->  core::pin::Pin<Box<dyn core::future::Future<Output = Result<graphql_client::Response<Q::ResponseData> ,ServerError> > + core::marker::Send+ 'async_trait> >where 'a: 'async_trait+ ,Q: 'async_trait+GraphQLQuery, 'life0: 'async_trait {
        async fn send_hasura_query<'a, Q: GraphQLQuery>(
            client: &reqwest::Client,
            variables: Q::Variables,
        ) -> Result<graphql_client::Response<Q::ResponseData>, ServerError> {


            let body = Q::build_query(variables);

            Ok(client
                .post(url)
                .header(HASURA_ADMIN_HEADER_KEY, secret)
                .json(&body)
                .send()
                .await
                .map_err(ServerError::InternalHTTPError)?
                .json()
                .await
                .map_err(ServerError::InternalHTTPError)?)
        }
    }
}


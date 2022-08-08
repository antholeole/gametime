use async_trait::async_trait;
use graphql_client::GraphQLQuery;

use crate::aux::errors::ServerError;

mod hasura_service;

#[async_trait]
trait HasuraService {
    async fn send_hasura_query<'a, Q: GraphQLQuery>(
        client: &reqwest::Client,
        variables: Q::Variables,
    ) -> Result<graphql_client::Response<Q::ResponseData>, ServerError>;
}
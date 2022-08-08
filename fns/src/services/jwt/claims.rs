use serde::{Serialize, Deserialize};

#[derive(Serialize, Deserialize)]
pub struct JwtClaims {
    pub admin: bool,
    pub user_id: uuid::Uuid,
}

use serde::{Deserialize, Serialize};

use crate::entities::{BeerEntity, UserEntity, UserToken};
use uuid::Uuid;

#[derive(Debug, Deserialize, Serialize)]
pub struct BeerRequest {
    pub id: Option<String>,
}

/// `BeerRequest` is the request send when a user wants to register that a beer was
/// bought/consumed.
impl BeerRequest {
    pub fn to_user_token(&self) -> Option<UserToken> {
        // TODO: needs verification
        match &self.id {
            Some(id) => Some(UserToken::new(id.to_string())),
            None => None,
        }
    }
}

/// Respons to a `BeerRequest` to tell the client the result of the users beer request.
#[derive(Debug, Deserialize, Serialize)]
pub struct BeerResponse {
    pub valid: bool,
}

/// Request to register a new user with our service.
#[derive(Debug, Deserialize, Serialize)]
pub struct CreateUserRequest {
    pub first_name: Option<String>,
    pub last_name: Option<String>,
    pub email: Option<String>,
    pub token: Option<String>,
}

impl CreateUserRequest {
    pub fn to_user(&self) -> Option<UserEntity> {
        if let (Some(first_name), Some(last_name), Some(email), Some(token)) = (
            self.first_name.as_ref(),
            self.last_name.as_ref(),
            self.email.as_ref(),
            self.token.as_ref(),
        ) {
            Some(UserEntity::new(
                Uuid::new_v4(),
                first_name.to_string(),
                last_name.to_string(),
                email.to_string(),
                UserToken::sanitize(token.to_string()),
            ))
        } else {
            None
        }
    }
}

#[derive(Debug, Deserialize, Serialize)]
pub struct CreateUserResponse {
    pub success: bool,
}

#[derive(Debug, Deserialize, Serialize)]
pub struct UserRequest {
    pub id: Option<String>,
}

#[derive(Debug, Deserialize, Serialize)]
pub struct UserResponse {
    pub first_name: String,
}

/// Response that contains a set of beer statistics for a specific user.
#[derive(Debug, Deserialize, Serialize)]
pub struct BeerSummary {
    pub today: i64,
    pub week: i64,
    pub month: i64,
    pub total: i64,
    pub unpaid: i8,
    pub recent_beers: Vec<BeerEntity>,
    pub favorite_beer: String,
}

impl BeerSummary {
    pub fn new(
        today: i64,
        week: i64,
        month: i64,
        total: i64,
        unpaid: i8,
        recent_beers: Vec<BeerEntity>,
        favorite_beer: String,
    ) -> Self {
        Self {
            today,
            week,
            month,
            total,
            unpaid,
            recent_beers,
            favorite_beer,
        }
    }
}

package services

import (
	"os"
	"time"

	"github.com/golang-jwt/jwt/v4"
)

type JwtClient interface {
	Sign(userId string, Admin bool) (string, error)
}

type jwtClient struct {
	hmacKey []byte
}

type hasuraClaims struct {
	DefaultRole  string   `json:"x-hasura-default-role"`
	AllowedRoles []string `json:"x-hasura-allowed-roles"`
	UserId       string   `json:"x-hasura-user-id"`
}

type jwtClaims struct {
	HasuraClaims hasuraClaims `json:"https://hasura.io/jwt/claims"`
	jwt.RegisteredClaims
}

const jwtSecretEnvKey = "JWT_SECRET"

const userRole = "user"
const adminRole = "team_admin"

func NewJwtClient() JwtClient {
	return jwtClient{
		hmacKey: []byte(os.Getenv(jwtSecretEnvKey)),
	}
}

func (c jwtClient) Sign(userId string, admin bool) (string, error) {
	allowedRoles := []string{userRole}
	var defaultRole string

	if admin {
		allowedRoles = append(allowedRoles, adminRole)
		defaultRole = adminRole
	} else {
		defaultRole = userRole
	}

	j := jwtClaims{
		hasuraClaims{
			DefaultRole:  defaultRole,
			AllowedRoles: allowedRoles,
			UserId:       userId,
		},
		jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(1 * time.Hour)),
		},
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, j)

	tokenString, err := token.SignedString(c.hmacKey)
	if err != nil {
		return "", err
	}

	return tokenString, nil
}

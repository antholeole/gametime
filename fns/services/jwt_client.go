package services

import (
	"os"
	"time"

	"github.com/golang-jwt/jwt/v4"
)

type JwtClient interface {
	Sign(claims *JwtClaims) (string, error)
}

type jwtClient struct {
	hmacKey []byte
}

type JwtClaims struct {
	UserId string `json:"user_id"`
	Admin  bool   `json:"admin"`
}

type jwtClaims struct {
	JwtClaims
	jwt.RegisteredClaims
}

const jwtSecretEnvKey = "JWT_SECRET"

func NewJwtClient() *JwtClient {
	var j JwtClient = jwtClient{
		hmacKey: []byte(os.Getenv(jwtSecretEnvKey)),
	}

	return &j
}

func (c jwtClient) Sign(claims *JwtClaims) (string, error) {
	j := jwtClaims{
		*claims,
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

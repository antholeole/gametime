package mock_services

import (
	"local/services"

	"github.com/stretchr/testify/mock"
)

type FakeJwtClient struct {
	services.JwtClient
	mock.Mock
}

func (j FakeJwtClient) Sign(claims *services.JwtClaims) (string, error) {
	args := j.Called(claims)
	return args.String(0), args.Error(1)
}

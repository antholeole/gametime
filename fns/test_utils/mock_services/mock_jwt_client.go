package mock_services

import (
	"local/services"

	"github.com/stretchr/testify/mock"
)

type FakeJwtClient struct {
	services.JwtClient
	mock.Mock
}

func (j FakeJwtClient) Sign(userId string, isAdmin bool) (string, error) {
	args := j.Called(userId, isAdmin)
	return args.String(0), args.Error(1)
}

package mock_services

import (
	"local/services"

	"github.com/stretchr/testify/mock"
)

type FakeObjectStorageService struct {
	services.JwtClient
	mock.Mock
}

func (oss FakeObjectStorageService) Sign(key string) (string, error) {
	args := oss.Called(key)
	return args.String(0), args.Error(1)
}

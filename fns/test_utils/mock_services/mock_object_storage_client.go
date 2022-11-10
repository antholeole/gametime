package mock_services

import (
	"local/services"

	"github.com/stretchr/testify/mock"
)

type FakeObjectStorageService struct {
	services.JwtClient
	mock.Mock
}

func (oss FakeObjectStorageService) Sign(key string, contentType string, contentLength int64) (string, error) {
	args := oss.Called(key, contentType, contentLength)
	return args.String(0), args.Error(1)
}

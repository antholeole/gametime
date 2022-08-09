package middleware

import (
	"net/http"
	"net/http/httptest"
	"os"
	"testing"

	testUtils "local/test_utils"

	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
)

func buildMockApi() *gin.Engine {
	api := gin.Default()
	api.Use(VerifyHasuraSent())
	api.GET("/", func(c *gin.Context) {
		c.Status(http.StatusOK)
	})

	return api
}

const fakeHasuraWebhookSecret = "Im a Fake Secret"

func TestNoHasuraHeader(t *testing.T) {
	api := buildMockApi()

	os.Setenv(HasuraWebhookHeaderEnvKey, fakeHasuraWebhookSecret)

	r := httptest.NewRecorder()
	req, _ := http.NewRequest("GET", "/", nil)

	api.ServeHTTP(r, req)

	testUtils.VerifyWebhookError(t, r, MissingAuthHeaderMessage, InvalidHasuraHeaderStatus)
}

func TestInvalidHasuraHeader(t *testing.T) {
	api := buildMockApi()

	os.Setenv(HasuraWebhookHeaderEnvKey, fakeHasuraWebhookSecret)

	r := httptest.NewRecorder()

	req, _ := http.NewRequest("GET", "/", nil)
	req.Header.Add(HasuraWebhookKeyHeader, "Some incorrect key value")

	api.ServeHTTP(r, req)

	testUtils.VerifyWebhookError(t, r, IncorrectAuthHeaderMessage, InvalidHasuraHeaderStatus)
}

func TestValidHasuraHeader(t *testing.T) {
	api := buildMockApi()

	os.Setenv(HasuraWebhookHeaderEnvKey, fakeHasuraWebhookSecret)

	r := httptest.NewRecorder()

	req, _ := http.NewRequest("GET", "/", nil)
	req.Header.Add(HasuraWebhookKeyHeader, fakeHasuraWebhookSecret)

	api.ServeHTTP(r, req)

	assert.Equal(t, http.StatusOK, r.Code)
}

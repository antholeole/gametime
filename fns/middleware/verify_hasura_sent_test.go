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

	os.Setenv(hasuraWebhookHeaderEnvKey, fakeHasuraWebhookSecret)

	r := httptest.NewRecorder()
	req, _ := http.NewRequest("GET", "/", nil)

	api.ServeHTTP(r, req)

	testUtils.VerifyWebhookError(t, r, missingAuthHeaderMessage, invalidHasuraHeaderStatus)
}

func TestInvalidHasuraHeader(t *testing.T) {
	api := buildMockApi()

	os.Setenv(hasuraWebhookHeaderEnvKey, fakeHasuraWebhookSecret)

	r := httptest.NewRecorder()

	req, _ := http.NewRequest("GET", "/", nil)
	req.Header.Add(hasuraWebhookKeyHeader, "Some incorrect key value")

	api.ServeHTTP(r, req)

	testUtils.VerifyWebhookError(t, r, incorrectAuthHeaderMessage, invalidHasuraHeaderStatus)
}

func TestValidHasuraHeader(t *testing.T) {
	api := buildMockApi()

	os.Setenv(hasuraWebhookHeaderEnvKey, fakeHasuraWebhookSecret)

	r := httptest.NewRecorder()

	req, _ := http.NewRequest("GET", "/", nil)
	req.Header.Add(hasuraWebhookKeyHeader, fakeHasuraWebhookSecret)

	api.ServeHTTP(r, req)

	assert.Equal(t, http.StatusOK, r.Code)
}

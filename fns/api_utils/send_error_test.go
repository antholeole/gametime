package api_utils

import (
	"encoding/json"
	"fmt"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
)

const fakeErrorMessage = "Cowabunga Baby"
const fakeErrorCode = 3000000

func buildMockApi(extensions *map[string]string) *gin.Engine {
	api := gin.Default()

	api.GET("/", func(c *gin.Context) {
		SendHasuraError(c, fakeErrorCode, fakeErrorMessage, extensions)
	})

	return api
}

func TestErrorFormat(t *testing.T) {
	api := buildMockApi(nil)

	r := httptest.NewRecorder()

	req, _ := http.NewRequest("GET", "/", nil)
	api.ServeHTTP(r, req)

	assert.Equal(t, HasuraErrorStatusCode, r.Code)

	var serverSentMessage WebhookError
	err := json.Unmarshal(r.Body.Bytes(), &serverSentMessage)

	if err != nil {
		t.Fatalf("Failed decoding response body to webhook error (%s)", fmt.Sprint(err))
	}

	if len(serverSentMessage.Extensions) != 1 {
		t.Errorf("Too many extensions when none were expected. Extensions: %s", fmt.Sprint(serverSentMessage.Extensions))
	}

	fakeErrorCodeStr := fmt.Sprint(fakeErrorCode)

	if actualCode := serverSentMessage.Extensions[CodeExtensionKey]; actualCode != fakeErrorCodeStr {
		t.Errorf("Extension code %s, expected %d", actualCode, fakeErrorCode)
	}

	if serverSentMessage.Code != fakeErrorCodeStr {
		t.Errorf("Body code %s, expected %d", serverSentMessage.Code, fakeErrorCode)
	}

	if serverSentMessage.Message != fakeErrorMessage {
		t.Errorf("Body message %s, expected %s", serverSentMessage.Message, fakeErrorMessage)
	}
}

func TestExtraExtensions(t *testing.T) {
	fakeExtensions := map[string]string{
		"fakeExtension1": "blah",
		"fakeExtension2": "cereal",
		"code":           fmt.Sprint(fakeErrorCode),
	}

	api := buildMockApi(&fakeExtensions)

	r := httptest.NewRecorder()

	req, _ := http.NewRequest("GET", "/", nil)
	api.ServeHTTP(r, req)

	assert.Equal(t, HasuraErrorStatusCode, r.Code)

	var serverSentMessage WebhookError
	err := json.Unmarshal(r.Body.Bytes(), &serverSentMessage)

	if err != nil {
		t.Fatalf("Failed decoding response body to webhook error (%s)", fmt.Sprint(err))
	}

	for fakeExtensionKey, fakeExtensionValue := range fakeExtensions {
		if realExtensionValue := serverSentMessage.Extensions[fakeExtensionKey]; realExtensionValue == "" {
			t.Errorf("Key %s was not present in sent extensions", fakeExtensionKey)
		} else if fakeExtensionValue != realExtensionValue {
			t.Errorf("Key %s has wrong value (got %s, wanted %s)", fakeExtensionKey, realExtensionValue, fakeExtensionValue)
		}
	}
}

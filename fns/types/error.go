package types

import (
	"fmt"

	"github.com/gin-gonic/gin"
	"golang.org/x/exp/maps"
)

type WebhookError struct {
	Message    string            `json:"message"`
	Code       string            `json:"Code"`
	Extensions map[string]string `json:"Extensions"`
}

// Hasura mandates that for a webhook to be classified as an error, the
// HTTP code has to be [400-499]. The user sent status code is in the
// extensions.
const HasuraErrorStatusCode = 400

func SendHasuraError(ginContext *gin.Context, status int, message string, extensions *map[string]string) {
	statusStr := fmt.Sprint(status)

	defaultAndCustomExtensions := map[string]string{
		"code": statusStr,
	}

	if extensions != nil {
		maps.Copy(defaultAndCustomExtensions, *extensions)
	}

	ginContext.JSON(HasuraErrorStatusCode, WebhookError{
		Message:    message,
		Code:       statusStr,
		Extensions: defaultAndCustomExtensions,
	})
}

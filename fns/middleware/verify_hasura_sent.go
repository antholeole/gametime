package middleware

import (
	"os"

	"github.com/gin-gonic/gin"

	apiUtils "local/api_utils"
)

const hasuraWebhookKeyHeader string = "WEBHOOK_SECRET_KEY"
const hasuraWebhookHeaderEnvKey string = "WEBHOOK_SECRET_KEY"

const invalidHasuraHeaderStatus int = 401
const missingAuthHeaderMessage string = "Missing required authentication header"
const incorrectAuthHeaderMessage string = "Incorrect authentication header"

func VerifyHasuraSent() gin.HandlerFunc {
	return func(c *gin.Context) {
		header_token := c.GetHeader(hasuraWebhookKeyHeader)

		if header_token == "" {
			apiUtils.SendHasuraError(c, invalidHasuraHeaderStatus, missingAuthHeaderMessage, nil)
			return
		}

		if header_token != os.Getenv(hasuraWebhookHeaderEnvKey) {
			apiUtils.SendHasuraError(c, invalidHasuraHeaderStatus, incorrectAuthHeaderMessage, nil)
			return
		}

		c.Next()
	}
}

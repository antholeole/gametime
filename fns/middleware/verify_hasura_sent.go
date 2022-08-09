package middleware

import (
	"os"

	"github.com/gin-gonic/gin"

	"local/types"
)

const HasuraWebhookKeyHeader string = "WEBHOOK_SECRET_KEY"
const HasuraWebhookHeaderEnvKey string = "WEBHOOK_SECRET_KEY"

const InvalidHasuraHeaderStatus int = 401
const MissingAuthHeaderMessage string = "Missing required authentication header"
const IncorrectAuthHeaderMessage string = "Incorrect authentication header"

func VerifyHasuraSent() gin.HandlerFunc {
	return func(c *gin.Context) {
		header_token := c.GetHeader(HasuraWebhookKeyHeader)

		if header_token == "" {
			types.SendHasuraError(c, InvalidHasuraHeaderStatus, MissingAuthHeaderMessage, nil)
			return
		}

		if header_token != os.Getenv(HasuraWebhookHeaderEnvKey) {
			types.SendHasuraError(c, InvalidHasuraHeaderStatus, IncorrectAuthHeaderMessage, nil)
			return
		}

		c.Next()
	}
}

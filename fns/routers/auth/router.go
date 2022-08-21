package auth

import (
	"local/services"

	"github.com/Khan/genqlient/graphql"
	"github.com/gin-gonic/gin"
)

func RegisterAllAuthRoutes(
	engine *gin.Engine,
	gqlClient *graphql.Client,
	jwtClient services.JwtClient,
) {
	authRouter := engine.Group("/auth")

	authenticateRoute(authRouter, gqlClient, jwtClient)
}

package film

import (
	"local/services"

	"github.com/Khan/genqlient/graphql"
	"github.com/gin-gonic/gin"
)

func RegisterAllFilmRoutes(
	engine *gin.Engine,
	gqlClient *graphql.Client,
	jwtClient services.ObjectStorageClient,
) {
	authRouter := engine.Group("/film")

	filmUploadRoute(authRouter, gqlClient, jwtClient)
}

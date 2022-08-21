package main

import (
	"local/middleware"
	"local/routers/auth"
	"local/routers/film"
	"local/services"

	"github.com/gin-gonic/gin"
)

func main() {
	api := gin.Default()

	api.Use(middleware.VerifyHasuraSent())

	// services
	hasuraClient := services.NewHasuraClient()
	jwtClient := services.NewJwtClient()
	objectStorageClient := services.NewObjectStorageClient()

	auth.RegisterAllAuthRoutes(api, hasuraClient, jwtClient)
	film.RegisterAllFilmRoutes(api, hasuraClient, objectStorageClient)

	api.Run()
}

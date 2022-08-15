package main

import (
	"local/auth"
	"local/middleware"
	"local/services"

	"github.com/gin-gonic/gin"
)

func main() {
	api := gin.Default()

	api.Use(middleware.VerifyHasuraSent())

	// services
	hasuraClient := services.NewHasuraClient()
	jwtClient := services.NewJwtClient()

	auth.RegisterAllAuthRoutes(api, hasuraClient, jwtClient)

	api.Run()
}

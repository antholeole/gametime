package main

import (
	"net/http"

	"local/middleware"

	"github.com/gin-gonic/gin"
)

func main() {
	api := gin.Default()

	api.Use(middleware.VerifyHasuraSent())

	api.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{"data": "hello world"})
	})

	api.Run()
}

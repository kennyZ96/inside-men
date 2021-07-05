package main

import (
	"github.com/er1c-zh/go-now/log"
	"github.com/gin-gonic/gin"
)

func main() {
	defer log.Flush()
	log.Info("Server init successfully.")
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	err := r.Run()
	if err != nil {
		log.Fatal("Server exit: %s", err.Error())
		return
	}
	log.Info("Server exit successfully.")
}

package main

import (
	"github.com/er1c-zh/go-now/log"
	"github.com/gin-gonic/gin"
	"github.com/kennyZ96/inside-men/middleware"
)

func main() {
	var err error
	defer log.Flush()
	r := gin.Default()
	log.Info("Register middleware.")
	initMiddleware(r)
	log.Info("Register router.")
	registerRouter(r)
	log.Info("Server init successfully.")
	err = r.Run()
	if err != nil {
		log.Fatal("Server exit: %s", err.Error())
		return
	}
	log.Info("Server exit successfully.")
}

func initMiddleware(eng *gin.Engine) {
	eng.Use(gin.Recovery())
	eng.Use(middleware.Log())
}

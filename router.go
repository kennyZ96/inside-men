package main

import (
	"github.com/gin-contrib/pprof"
	"github.com/gin-gonic/gin"
	"github.com/kennyZ96/inside-men/controller"
)

func registerRouter(eng *gin.Engine) {
	statusGroup := eng.Group("/status")
	statusGroup.GET("/ping", controller.Ping)
	pprof.RouteRegister(statusGroup)
}

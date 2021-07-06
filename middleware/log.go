package middleware

import (
	"github.com/er1c-zh/go-now/log"
	"github.com/gin-gonic/gin"
)

func Log() gin.HandlerFunc {
	return func(ctx *gin.Context) {
		log.Info("[LOG] method: %s, url: %s",
			ctx.Request.Method, ctx.Request.URL.String())
		ctx.Next()
	}
}

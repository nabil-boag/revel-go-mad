package controllers

import (
	"github.com/revel/revel"
)

type App struct {
	*revel.Controller
}

func (c App) Index() revel.Result {
	number := 0
	for i := 0; i < 1000000; i++ {
		number += i
	}
	return c.Render(number)
}

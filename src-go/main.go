package main

import (
	"syscall/js"
)

func main() {

	doc := js.Global().Get("document")
	body := doc.Get("body")

	message := "<h1>Hello world!</h1>"

	body.Set("innerHTML", message)
}
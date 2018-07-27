package main

import (
	"log"
	"net/http"
)

func main() {
	router := createRouter()
	log.Fatal(http.ListenAndServe(":8090", router))
}

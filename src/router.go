package main

import "github.com/gorilla/mux"

func createRouter() *mux.Router {

	router := mux.NewRouter().StrictSlash(true)
	router.HandleFunc("/", Index)
	router.HandleFunc("/product", ProductList)
	router.HandleFunc("/product/{productId}", ProductDetail)

	return router
}

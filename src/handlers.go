package main

import (
	"net/http"
	"fmt"
	"html"
	"github.com/gorilla/mux"
)

func Index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
}

func ProductList(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Product List")
}

func ProductDetail(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	productId := vars["productId"]
	fmt.Fprintln(w, "ProductDetail:", productId)
}

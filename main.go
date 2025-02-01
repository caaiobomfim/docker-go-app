package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Docker + Golang!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Full Cycle Rocks!!")
	http.ListenAndServe(":8080", nil)
}

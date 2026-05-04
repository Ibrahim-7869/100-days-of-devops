package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "[Day 10] Multi-Stage Optimized Microservice Running.")
	})
	fmt.Println("Server booting on port 8080...")
	http.ListenAndServe(":8080", nil)
}

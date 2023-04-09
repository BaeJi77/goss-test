package main

import (
	"fmt"
	"os"
	"time"
)

func main() {
	fmt.Println("hello world")

	os.WriteFile("hello-world.txt", []byte{}, 0644)

	time.Sleep(1000 * time.Minute)
}

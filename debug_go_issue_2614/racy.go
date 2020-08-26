package main

import (
	"flag"
	"fmt"
	"os"
)

var wantRace = flag.Bool("wantrace", false, "")

func Race() {
	if *wantRace != RaceEnabled {
		fmt.Fprintf(os.Stderr, "!!! -wantrace is %v, but RaceEnabled is %v\n", *wantRace, RaceEnabled)
		os.Exit(1)
	}

	done := make(chan bool)
	m := make(map[string]string)
	m["name"] = "world"
	go func() {
		m["name"] = "data race"
		done <- true
	}()
	fmt.Println("Hello,", m["name"])
	<-done
}

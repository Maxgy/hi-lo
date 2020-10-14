#!/bin/sh

echo "$1 Hi-Lo:"

case $1 in
    "go")
        (cd go && go run hilo.go)
        ;;
    "python")
        (cd python && python hilo.py)
        ;;
    "rust")
        (cd rust && cargo run)
        ;;
    *)
        echo "Sorry, language not found."
        ;;
esac

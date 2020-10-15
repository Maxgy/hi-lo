#!/bin/sh

echo "$1 Hi-Lo:"

case $1 in
    "cs"|"csharp"|"c-sharp"|"dotnet")
	(cd c-sharp && dotnet run)
	;;
    "go")
        (cd go && go run hilo.go)
        ;;
    "python"|"py")
        (cd python && python hilo.py)
        ;;
    "rust"|"rs")
        (cd rust && cargo run)
        ;;
    *)
        echo "Sorry, language not found."
        ;;
esac

#!/bin/sh

echo "$1 Hi-Lo:"

case $1 in
    "c++"|"cpp"|"cxx")
        (cd cxx && clang++ hilo.cxx && ./a.out)
        ;;
    "cs"|"csharp"|"c-sharp"|"dotnet")
	    (cd c-sharp && dotnet run)
	    ;;
    "go")
        (cd go && go run hilo.go)
        ;;
    "js"|"javascript")
        echo "https://maxgy.github.io/hi-lo/"
        ;;
    "python"|"py")
        (cd python && python hilo.py)
        ;;
    "rust"|"rs")
        (cd rust && cargo run)
        ;;
    *)
        echo "Sorry, language not found."
        echo "Available languages:"
        echo "c-sharp"
        echo "c++"
        echo "go"
        echo "javascript"
        echo "python"
        echo "rust"
        ;;
esac

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
    "java")
        (cd java && javac Hilo.java && java Hilo)
        ;;
    "js"|"javascript")
        echo "https://maxgy.github.io/hi-lo/"
        ;;
    "php")
        (cd php && php hilo.php)
        ;;
    "python"|"py")
        (cd python && python hilo.py)
        ;;
    "ruby"|"rb")
        (cd ruby && ruby hilo.rb)
        ;;
    "rust"|"rs")
        (cd rust && cargo run)
        ;;
    "swift")
        (cd swift && swift hilo.swift)
        ;;
    *)
        echo "Sorry, language not found."
        echo "Available languages:"
        echo "c++"
        echo "c-sharp"
        echo "go"
        echo "java"
        echo "javascript"
        echo "php"
        echo "python"
        echo "ruby"
        echo "rust"
	      echo "swift"
        ;;
esac

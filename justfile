fmt:
    (cd c && clang-format -i -style="{IndentWidth: 4}" *.c)
    (cd cxx && clang-format -i -style="{IndentWidth: 4}" *.cxx)
    (cd c-sharp && dotnet-format)
    (cd go && go fmt ./*)
    (cd js && deno fmt)
    (yapf -ir python)
    (cd rust && cargo fmt)

sloc:
    tokei --sort code -e *.md -e */*.toml -e */*.csproj -e *.html -e *.sh

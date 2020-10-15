fmt:
    (cd c-sharp && dotnet-format)
    (cd cxx && clang-format -i -style="{IndentWidth: 4}" *.cxx)
    (cd go && go fmt)
    (deno fmt)
    (yapf -ir python)
    (cd rust && cargo fmt)

sloc:
    tokei --sort code -e *.md -e */*.toml -e */*.csproj -e *.html -e *.sh

fmt:
    (cd c-sharp && dotnet-format)
    (cd go && go fmt)
    (yapf -ir python)
    (cd rust && cargo fmt)

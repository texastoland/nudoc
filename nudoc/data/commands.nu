# Get all command names from a clean scope.
export def 'list std' []: nothing -> list<string> {
    nu --no-config-file --commands '
    use std
    scope commands | get name
    | to json' | from json
}

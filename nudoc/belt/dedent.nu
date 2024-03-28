export def main []: string -> string {
  let lines = lines
    | wrap text
    | insert length { get text | str trim --left | str length }
    | insert indent { ($in.text | str length) - $in.length }
  let non_empty_lines = $lines | where length != 0
  let max_indent = $lines.indent | math max
  let indent = $non_empty_lines.indent ++ $max_indent | math min
  $lines.text | each { str substring $indent.. } | str join "\n"
}

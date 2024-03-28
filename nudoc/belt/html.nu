export def escape []: string -> string {
  to html | parse --regex '<body>(?<html>.*)</body>' | get html.0
}

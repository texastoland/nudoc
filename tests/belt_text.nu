use std assert
use ../nudoc belt text

export def 'test text dedent empty line' [] {
  assert equal ('' | text dedent) ''
}

export def 'test text dedent line ending with space' [] {
  assert equal ('_ ' | text dedent) '_ '
}

export def 'test text dedent line starting with space' [] {
  assert equal (' _' | text dedent) '_'
}

export def 'test text dedent line ending with newline' [] {
  assert equal (" _\n" | text dedent) "_\n"
}

export def 'test text dedent line joined with blank line' [] {
  assert equal ("_\n " | text dedent) "_\n "
}

export def 'test text dedent line joined with shorter blank line' [] {
  assert equal ("  _\n " | text dedent) "_\n"
}

export def 'test text dedent 2 lines joined by empty line' [] {
  assert equal ("  _\n\n _" | text dedent) " _\n\n_"
}

export def 'test text dedent 2 lines joined by longer blank line' [] {
  assert equal (" _\n  \n _" | text dedent) "_\n \n_"
}

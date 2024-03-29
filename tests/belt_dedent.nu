use std assert
use ../nudoc belt dedent

export def 'test dedent empty line' [] {
  assert equal ('' | dedent) ''
}

export def 'test dedent line ending with space' [] {
  assert equal ('_ ' | dedent) '_ '
}

export def 'test dedent line starting with space' [] {
  assert equal (' _' | dedent) '_'
}

export def 'test dedent line ending with newline' [] {
  assert equal (" _\n" | dedent) "_\n"
}

export def 'test dedent line joined with blank line' [] {
  assert equal ("_\n " | dedent) "_\n "
}

export def 'test dedent line joined with shorter blank line' [] {
  assert equal ("  _\n " | dedent) "_\n"
}

export def 'test dedent 2 lines joined by empty line' [] {
  assert equal ("  _\n\n _" | dedent) " _\n\n_"
}

export def 'test dedent 2 lines joined by longer blank line' [] {
  assert equal (" _\n  \n _" | dedent) "_\n \n_"
}

use std assert
use ../nudoc data commands

export def 'test commands list std' [] {
  assert ('std assert' in (commands list std))
  assert ('assert' not-in (commands list std))
}

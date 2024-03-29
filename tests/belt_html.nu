use std assert
use ../nudoc belt html

export def 'test html escape' [] {
  assert equal (
    "<pre>\n\n&lt;br&gt;\n\n)</pre>" | html escape
  ) '&lt;pre&gt;<br><br>&amp;lt;br&amp;gt;<br><br>)&lt;&#x2f;pre&gt;'
}

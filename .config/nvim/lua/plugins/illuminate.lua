return {
  "RRethy/vim-illuminate",
  lazy = false,
  keys = {
    { "[r", function() require("illuminate").goto_prev_reference() end, desc = "Previous highlighted symbol" },
    { "]r", function() require("illuminate").goto_next_reference() end, desc = "Next highlighted symbol" },
  },
}

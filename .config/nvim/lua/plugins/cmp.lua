return {
  "saghen/blink.cmp",
  dependencies = "rafamadriz/friendly-snippets",
  version = "v0.*",
  opts = {
    signature = { enabled = true },
    keymap = {
      preset = "default",
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
    },
  },
}

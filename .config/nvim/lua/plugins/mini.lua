return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.statusline").setup { use_icons = true }
    require("mini.ai").setup { n_lines = 500 }
    require("mini.surround").setup {}
  end
}

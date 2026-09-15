return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup {
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "ruby" },
      },
      indent = {
        enable = false,
      },
    }
  end,
}

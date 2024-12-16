return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").add {
      { "<leader>g", group = "[G]it", icon = "" },
      { "<leader>h", group = "[H]arpoon", icon = "󱡀" },
      { "<leader>s", group = "[S]earch", icon = "" },
    }
  end,
}

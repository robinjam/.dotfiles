return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  opts = {},
  keys = {
    { "[c", "<cmd>Gitsigns nav_hunk prev<cr>", desc = "Previous [c]hange" },
    { "]c", "<cmd>Gitsigns nav_hunk next<cr>", desc = "Next [c]hange" },
    { "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "[T]oggle current line blame" },
  },
}

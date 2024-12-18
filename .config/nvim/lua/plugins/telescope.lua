return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-ui-select.nvim" },
  },
  keys = {
    { "<leader>sb", "<cmd>Telescope buffers<cr>",               desc = "[S]earch [b]uffers" },
    { "<leader>sf", "<cmd>Telescope find_files<cr>",            desc = "[S]earch [f]iles" },
    { "<leader>sg", "<cmd>Telescope live_grep<cr>",             desc = "[S]earch with [g]rep" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>",             desc = "[S]earch [h]elp" },
    { "<leader>sd", "<cmd>Telescope lsp_document_symbols<cr>",  desc = "[S]earch [d]ocument symbols" },
    { "<leader>sw", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "[S]earch [w]orkspace symbols" },
    { "<C-]>",      "<cmd>Telescope lsp_definitions<cr>",       desc = "Goto definition" },
    { "grr",        "<cmd>Telescope lsp_references<cr>",        desc = "Goto references" },
    { "gri",        "<cmd>Telescope lsp_implementations<cr>",   desc = "Goto implementation" },
  },
  config = function()
    local telescope = require("telescope")
    -- Not using opts because the call to require causes the plugin to be eagerly loaded
    telescope.setup {
      pickers = {
        buffers = {
          theme = "ivy",
          mappings = {
            n = {
              ["d"] = "delete_buffer",
            },
          },
        },
        find_files = {
          theme = "ivy",
          hidden = true,
          file_ignore_patterns = { ".git/" },
        },
        help_tags = { theme = "ivy" },
        live_grep = { theme = "ivy" },
        lsp_document_symbols = { theme = "ivy" },
        lsp_workspace_symbols = { theme = "ivy" },
        lsp_definitions = { theme = "ivy" },
        lsp_references = { theme = "ivy" },
        lsp_implementations = { theme = "ivy" },
      },
      extensions = {
        fzf = {},
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    }
    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")
  end,
}

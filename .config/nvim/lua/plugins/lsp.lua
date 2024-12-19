local servers = {
  clangd = {},
  html = {
    settings = {
      html = {
        format = {
          indentInnerHtml = true,
        },
      },
    },
  },
  lua_ls = {},
  pyright = {},
  rust_analyzer = {},
  terraformls = {},
  ts_ls = {},
}

return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    "saghen/blink.cmp",
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  keys = {
    { "<leader>f", function() vim.lsp.buf.format { timeout_ms = 5000 } end, desc = "[F]ormat buffer" }
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    for server, config in pairs(servers) do
      config.capabilities = capabilities
      lspconfig[server].setup(config)
    end
  end,
}

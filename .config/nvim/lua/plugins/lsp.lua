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
    "hrsh7th/cmp-nvim-lsp",
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
    { "<leader>f", function() vim.lsp.buf.format() end, desc = "[F]ormat buffer" }
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

    for server, config in pairs(servers) do
      config.capabilities = capabilities
      lspconfig[server].setup(config)
    end
  end,
}

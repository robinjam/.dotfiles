return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()

    local toggle = function()
      local new_value = not vim.diagnostic.config().virtual_lines
      vim.diagnostic.config { virtual_lines = new_value, virtual_text = not new_value }
    end

    toggle()
    vim.keymap.set("", "<Leader>tl", toggle, { desc = "[T]oggle [l]sp_lines" })
  end,
}

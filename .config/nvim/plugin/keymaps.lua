local set = vim.keymap.set

set("n", "<leader>w", "<cmd>w<CR>")
set("n", "<leader>q", "<cmd>q<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Toggle diagnostics
set("n", "<leader>td", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "[T]oggle [d]iagnostics" })

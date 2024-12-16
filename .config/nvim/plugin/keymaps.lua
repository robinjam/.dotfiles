local set = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

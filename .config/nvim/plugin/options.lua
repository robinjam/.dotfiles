local opt = vim.opt

opt.cursorline = true

opt.number = true
opt.relativenumber = true

opt.shiftwidth = 4
opt.expandtab = true

opt.signcolumn = "yes"

opt.scrolloff = 5

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.smartcase = true
opt.ignorecase = true

opt.inccommand = "split"

-- Required for SQL highlighting in strings to work
vim.api.nvim_set_hl(0, "@lsp.type.string.rust", {})

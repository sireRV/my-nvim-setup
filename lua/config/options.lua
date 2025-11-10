vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.ignorecase = true
-- Tabbing/Indeting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.termguicolors = true

--Fold Settings
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua:vim:treesitter.foldexpr()"
vim.opt.foldlevel = 99

vim.opt.clipboard:append("unnamedplus")

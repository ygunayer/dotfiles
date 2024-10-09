vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.listchars = { space = '·',eol = '¶', nbsp = '␣', tab = '──▸' }
vim.opt.list = true
vim.opt.cursorline = true
vim.opt.laststatus = 2

vim.opt_local.shiftwidth = 2
vim.opt_local.backspace = '2'
vim.opt_local.shiftround = true
vim.opt_local.expandtab = true

vim.keymap.set('i', '<S-Tab>', '<C-V><Tab>')


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.listchars = { space = '·',eol = '¶', nbsp = '␣', tab = '──▸' }
vim.opt.list = true
vim.opt.cursorline = true
vim.opt.laststatus = 2

vim.opt.shiftwidth = 2
vim.opt.backspace = '2'
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('i', '<S-Tab>', '<C-V><Tab>')


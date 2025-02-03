vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  view = {
    width = 40,
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set('n', '<C-Home>', ':NvimTreeFindFile<CR>')


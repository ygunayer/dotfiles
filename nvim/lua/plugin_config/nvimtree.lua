vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugiN = 1

require('nvim-tree').setup({
  view = {
    width = 40,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<c-r>', ':NvimTreeFindFile<CR>')


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<c-h>', builtin.oldfiles, {})
vim.keymap.set('n', '<c-/>', builtin.live_grep, {})


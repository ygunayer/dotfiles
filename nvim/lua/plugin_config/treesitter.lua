require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'c', 'cpp', 'go', 'lua', 'vim', 'elixir', 'javascript', 'typescript' },
  sync_installs = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}


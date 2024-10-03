require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'elixirls',
    'gopls',
    'clangd',
    'ts_ls',
    'pylsp',
  },
})

local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- Lua
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        },
      },
    },
  },
})

-- Elixir
lspconfig.elixirls.setup({
  cmd = { vim.fn.expand('$HOME/dev/tools/elixir-ls/current/language_server.sh') },
})

-- Go
lspconfig.gopls.setup({})

-- C, C++
lspconfig.clangd.setup({})

-- JavaScript, TypeScript
lspconfig.ts_ls.setup({
  filetypes = { 'javascript', 'typescript' },
})

-- Python
lspconfig.pylsp.setup({
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 120,
        },
      },
    },
  },
})


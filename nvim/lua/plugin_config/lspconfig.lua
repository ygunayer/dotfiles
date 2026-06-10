require('mason', {})

require('mason-lspconfig', {
  ensure_installed = {
    'lua_ls',
    'elixirls',
    'gopls',
    'clangd',
    'ts_ls',
    'pylsp',
  },
})

local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
-- local lsp_defaults = vim.lsp.config('util').default_config

--lsp_defaults.capabilities = vim.tbl_deep_extend(
--  'force',
--  lsp_defaults.capabilities,
--  require('cmp_nvim_lsp').default_capabilities()
--)

-- Lua
vim.lsp.config('lua_ls', {
  capabilities = cmp_capabilities,
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
vim.lsp.config('elixirls', {
  capabilities = cmp_capabilities,
  cmd = { vim.fn.expand('$HOME/dev/tools/elixir-ls/current/language_server.sh') },
})

-- Go
vim.lsp.config('gopls', {
  capabilities = cmp_capabilities,
})

-- C, C++
vim.lsp.config('clangd', {
  capabilities = cmp_capabilities,
})

-- JavaScript, TypeScript
vim.lsp.config('ts_ls', {
  capabilities = cmp_capabilities,
  filetypes = { 'javascript', 'typescript' },
})

-- Python
vim.lsp.config('pylsp', {
  capabilities = cmp_capabilities,
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


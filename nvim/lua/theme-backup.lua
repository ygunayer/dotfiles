local Utils = require 'utils'

local M = {}

local config_dir = vim.fn.stdpath('config')
local theme_path = config_dir .. '/themes/current'

function M.load()
  if Utils.file_exists(theme_path) then
    vim.cmd('source ' .. theme_path)
  else
    print('No theme file present at ' .. theme_path)
  end
end

return M


require 'utils'

local Theme = {}

local theme_path = '../themes/current'

function Theme.load()
  if file_exists(theme_path) then
    vim.cmd('source ' .. theme_path)
  else
    print('No theme file present at themes/current')
  end
end

return Theme


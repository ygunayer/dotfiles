function file_exists(file)
  local f = io.open(file, 'r')
  if f then f:close() end
  return f ~= nil
end

local M = {}

---@param path string
function M.open(path)
  local load, err = package.loadlib(path, 'luaopen_physfs')
  if load == nil then error('failed to load lib `' .. path .. '`: ' .. err) end
  package.loaded['physfs'] = load()
end

return M

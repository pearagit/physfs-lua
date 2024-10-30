local M = {}

---@param path string
---@return physfs
function M.open(path)
  local load, err = package.loadlib(path, 'luaopen_physfs')
  if load == nil then error('failed to load lib `' .. path .. '`: ' .. err) end
  local physfs = load()
  package.loaded['physfs'] = physfs
  return physfs
end

return M

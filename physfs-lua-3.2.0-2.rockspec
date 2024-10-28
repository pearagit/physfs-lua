---@diagnostic disable: lowercase-global
rockspec_format = "3.0"
package = "physfs-lua"
version = "3.2.0-2"
source = {
  url = "git+ssh://git@github.com/pearagit/physfs-lua.git",
}
description = {
  homepage = "https://icculus.org/physfs/",
  license = "Lua License",
  summary = "PhysicsFS bindings for Lua",
  detailed = "Lua bindings by Xavier Wang for PhysicsFS, a library to provide abstract access to various archives.",
}
dependencies = {
  "lua ~> 5.1",
  "luaunit >= 3.4",
}
external_dependencies = {
  PHYSFS = {
    header = "physfs.h",
  },
}
build = {
  type = "builtin",
  modules = {
    physfs = {
      sources = "lua-physfs.c",
      libraries = { "physfs" },
      incdirs = { "$(PHYSFS_INCDIR)" },
      libdirs = { "$(PHYSFS_LIBDIR)" },
    },
  },
}
test = {
  type = "command",
  script = "tests/test.lua",
}

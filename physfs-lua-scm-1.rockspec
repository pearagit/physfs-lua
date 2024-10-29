---@diagnostic disable: lowercase-global
rockspec_format = "3.0"
package = "physfs-lua"
version = "scm-1"
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
      sources = "src/physfs-lua.c",
      libraries = { "physfs" },
      incdirs = { "$(PHYSFS_INCDIR)" },
      libdirs = { "$(PHYSFS_LIBDIR)" },
    },
    ["physfs-lua"] = "src/physfs-lua.lua",
  },
  copy_directories = {
    "tests",
  },
}
test = {
  type = "command",
  script = "tests/test.lua",
}

<h1 align="center">
   physfs-lua
</h1>

`physfs-lua` library for binding `PhysicsFS`, a library to provide abstract access to various archives, to Lua, specifically targeting Lua 5.1 and LuaJIT. This repository hosts an adapted version of Xavier Wang's [`lua-physfs`](https://github.com/starwing/lua-physfs) library, updated to link with a system installed `PhysicsFS` library and any other potential changes required for use with Neovim.

The remaining of this document features the original [lua-physfs readme](https://github.com/starwing/lua-physfs/blob/master/README.md) with relevant changes.

---

lua-physfs is a [physfs][1] binding for the Lua language. it expose
most physfs API, except the `mountIo()` and `register()` routines.

[1]: https://github.com/icculus/physfs
[2]: https://luarocks.org

PhysicsFS is a library to provide abstract access to various archives.

to use this binding, easiest way is use [luarocks][2]:

```
luarocks install physfs-lua
```

this library is in Lua license, same as the Lua language.

## API List

- physfs.File:

  - `#file                         -> number|error`
  - `file:buffSize(number)         -> file|(nil, errmsg)`
  - `file:close()                  -> file|(nil, errmsg)`
  - `file:eof()                    -> boolean`
  - `file:flush()                  -> file|(nil, errmsg)`
  - `file:length()                 -> number|(nil, errmsg)`
  - `file:read(fmt...)             -> (nil|number|string)...`
  - `file:seek(number)             -> file|(nil, errmsg)`
  - `file:tell()                   -> number|(nil, errmsg)`
  - `file:write(string...)         -> file|(nil, errmsg)`
  - `file:writeInt(fmt, number...) -> file|(nil, errmsg)`
  - `tostring(file)                -> string`

- `physfs.cdRomDirs([table])        -> table, number`
- `physfs.convInt(fmt, number...)   -> number...`
- `physfs.delete(string)            -> string|(nil, errmsg)`
- `physfs.exists(string)            -> boolean`
- `physfs.files(string[, table])    -> table, number`
- `physfs.lastError()               -> string`
- `physfs.lastError(string)         -> none`
- `physfs.mkdir(string)             -> string|(nil, errmsg)`
- `physfs.mount(name[, point[, preppend]]) -> name|(nil, errmsg)`
- `physfs.mountFile(file[, name[, point[, preppend]]]) -> file|(nil, errmsg)`
- `physfs.mountMemory(string[, name[, point[, preppend]]]) -> string|(nil, errmsg)`
- `physfs.mountPoint(string)        -> string`
- `physfs.openAppend(string)        -> file|(nil, errmsg)`
- `physfs.openRead(string)          -> file|(nil, errmsg)`
- `physfs.openWrite(string)         -> file|(nil, errmsg)`
- `physfs.prefDir(org, app)         -> org|(nil, errmsg)`
- `physfs.realDir(string)           -> string`
- `physfs.saneConfig(org, app[, ext[, includeCdRoms[, archiveFirst]]]) -> org|(nil, errmsg)`
- `physfs.searchPath([table])       -> table, number`
- `physfs.stat(string[, table])     -> table`
- `physfs.supportedArchiveTypes([table]) -> table, number`
- `physfs.unmount(string)           -> string|(nil, errmsg)`
- `physfs.useSymlink()              -> boolean`
- `physfs.useSymlink(boolean)       -> none`
- `physfs.version()                 -> number, number, number`
- `physfs.writeDir()                -> string`
- `physfs.writeDir(string)          -> string|(nil, errmsg)`

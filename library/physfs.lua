---@alias physfs.format "i"|"u"|"1i"|"1u"|"2i"|"2u"|"4i"|"4u"|"8i"|"8u"|"<i"|"<u"|"<1i"|"<1u"|"<2i"|"<2u"|"<4i"|"<4u"|"<8i"|"<8u"|">i"|">u"|">1i"|">1u"|">2i"|">2u"|">4i"|">4u"|">8i"|">8u"

---@class physfs
---@field cdRomDirs fun(output?: table): table, number
---@field convInt fun(fmt: physfs.format, ...: number): ...: number
---@field delete fun(path: string): string?, string?
---@field exists fun(path: string): boolean
---@field files fun(path: string, tbl?: table): table, number
---@field lastError fun(message: string?): string?
---@field mkdir fun(path: string): string?, string?
---@field mount fun(name: string, point?: string, prepend?: string): string?, string?
---@field mountFile fun(file: string, name?: string, point?: string, prepend?: string): physfs.File?, string?
---@field mountMemory fun(data: string, name?: string, point?: string, prepend?: string): string?, string?
---@field mountPoint fun(path: string): string
---@field openAppend fun(path: string): physfs.File?, string?
---@field openRead fun(path: string): physfs.File?, string?
---@field openWrite fun(path: string): physfs.File?, string?
---@field prefDir fun(org: string, app: string): string?, string?
---@field realDir fun(path: string): string
---@field saneConfig fun(org: string, app: string, ext?: string, includeCdRoms?: boolean, archiveFirst?: boolean): string?, string?
---@field searchPath fun(output?: table): table, number
---@field stat fun(path: string, output?: table): table
---@field supportedArchiveTypes fun(output?: table): table, number
---@field unmount fun(path: string): string?, string?
---@field useSymlink fun(enable?: boolean): boolean?
---@field version fun(): integer, integer, integer
---@field writeDir fun(path?: string): string?, string?
local physfs = {}

---@class physfs.File
---@operator len(physfs.File): number|string
---@field buffSize fun(self: physfs.File, n: integer): physfs.File?, string?
---@field close fun(self: physfs.File, n: integer): physfs.File?, string?
---@field eof fun(self: physfs.File): boolean
---@field flush fun(self: physfs.File): physfs.File?, string?
---@field length fun(self: physfs.File): integer | string?
---@field read fun(self: physfs.File, ...: physfs.format): number?|string?             -> (nil|number|string)...
---@field seek fun(self: physfs.File, offset: integer): physfs.File|string?             -> physfs.File| string?
---@field tell fun(self: physfs.File): integer?, string?
---@field write fun(self: physfs.File, ...: string): physfs.File?, string?
---@field writeInt fun(self: physfs.File, number...): physfs.File?, string?
---@field tostring fun(self: physfs.File): string

return physfs

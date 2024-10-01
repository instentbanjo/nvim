---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = 'chadracula',
  transparency = true,
  relativenumber = true,
}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
 return M


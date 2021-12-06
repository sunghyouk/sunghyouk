-- FIX: changed standard nord to modified nord (6th, Dec, 2021)
-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = false
vim.g.nord_italic = false

-- Load the colorscheme
require('nord').set()

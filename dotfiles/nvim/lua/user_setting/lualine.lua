local lualine = require('lualine')

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'auto', -- or tokyonight, nightfox
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {"toggleterm", "NvimTree", "vista_kind"},
    always_divide_middle = true,
    extensions = {"fugitive"},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_diagnostic'}, colored = false}},
-- Fix: un-colored the line_b because this option over-wrap to the identical color (6th, Dec, 2021)
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

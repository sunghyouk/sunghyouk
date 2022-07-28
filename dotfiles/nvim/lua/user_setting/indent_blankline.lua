vim.opt.list = true
vim.opt.listchars:append("eol:↵")
vim.opt.listchars:append("space:•") --○

local indent_blankline = require('indent_blankline')

indent_blankline.setup {
    show_end_of_line = true,
    show_current_context = true,
    show_current_context_start = true,
    space_char_blankline = " ",
    char = "▏",
    buftype_exclude = {
        "terminal",
        "nvim-lsp-installer",
    },
    filetype_exclude = {
        "startify",
        "nvim-lsp-installer",
    }
}

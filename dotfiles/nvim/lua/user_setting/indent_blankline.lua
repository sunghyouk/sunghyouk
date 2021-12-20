local indent_blankline = require('indent_blankline')

indent_blankline.setup {
    char = "▏",
    buftype_exclude = {
        "terminal"
    },
    filetype_exclude = {
        "startify"
    }
}

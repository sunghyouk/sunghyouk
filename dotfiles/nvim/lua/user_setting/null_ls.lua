-- 2) null-ls - to independent setup
local null_ls = require('null-ls')

-- null-ls is a general purpose language server that doesn't need
-- the same config as actual language servers like tsserver, so
-- setup is a little different.

null_ls.setup({
    debug = false,
    sources = {
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.prettier.with({
            prefer_local = "node_modules/.bin",
        }),
        null_ls.builtins.formatting.format_r,
    }
})

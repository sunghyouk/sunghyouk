require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
local lspconfig = require("lspconfig")

lspconfig.r_language_server.setup{}
lspconfig.sumneko_lua.setup{}
lspconfig.clangd.setup{}
lspconfig.tsserver.setup{}
lspconfig.bashls.setup{}
lspconfig.pyright.setup{}
lspconfig.remark_ls.setup{}
lspconfig.sqlls.setup{}
lspconfig.texlab.setup{}
lspconfig.vimls.setup{}
lspconfig.yamlls.setup{}

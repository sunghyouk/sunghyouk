local map = vim.api.nvim_set_keymap

map('n', '<M-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<M-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<M-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<M-k>', '<C-w>k', {noremap = true, silent = false})

map('n', '[b', '<cmd>bprevious<CR>', {noremap = true, silent = false}) -- previous buffer
map('n', ']b', '<cmd>bnext<CR>', {noremap = true, silent = false}) -- next buffer
map('n', '[B', '<cmd>bfirst<CR>', {noremap = true, silent = false}) -- first buffer
map('n', ']B', '<cmd>blast<CR>', {noremap = true, silent = false}) -- last buffer
map('n', '<M-d>', '<cmd>bdelete<CR>', {noremap = true, silent = false}) -- close buffer

map('n', '[t', '<cmd>tprev<CR>', {noremap = true, silent = false}) -- previous tag
map('n', ']t', '<cmd>tnext<CR>', {noremap = true, silent = false}) -- next tag
map('n', '[T', '<cmd>tfirst<CR>', {noremap = true, silent = false}) -- first tag
map('n', ']T', '<cmd>tlast<CR>', {noremap = true, silent = false}) -- last tag

map('n', '[q', '<cmd>cprev<CR>', {noremap = true, silent = false}) -- previous quickfix list
map('n', ']q', '<cmd>cnext<CR>', {noremap = true, silent = false}) -- next quickfix list
map('n', '[Q', '<cmd>cfirst<CR>', {noremap = true, silent = false}) -- first quickfix list
map('n', ']Q', '<cmd>clast<CR>', {noremap = true, silent = false}) -- last quickfix list

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- for plugin
-- nvim tree
map('n', '<F2>', '<cmd>NvimTreeToggle<CR>', {noremap = true, silent = true})

-- startify
map('n', '<F1>', '<cmd>Startify<CR>', {noremap = true, silent = true})

-- fzf
map('n', '<leader>ff', '<cmd>Files<CR>', {noremap = true, silent =true})
map('n', '<leader>fb', '<cmd>Buffers<CR>', {noremap = true, silent =true})
map('n', '<leader>fg', '<cmd>Rg<CR>', {noremap = true, silent =true})
map('n', '<leader>ft', '<cmd>Tags<CR>', {noremap = true, silent =true})
map('n', '<leader>fm', '<cmd>Marks<CR>', {noremap = true, silent =true})

-- telescope
map('n', '<leader>tf', '<cmd>Telescope find_files<CR>', {noremap = true, silent =true})
map('n', '<leader>tg', '<cmd>Telescope live_grep<CR>', {noremap = true, silent =true})
map('n', '<leader>tb', '<cmd>Telescope buffers<CR>', {noremap = true, silent =true})
map('n', '<leader>tt', '<cmd>Telescope help_tags<CR>', {noremap = true, silent =true})
map('n', '<leader>tk', '<cmd>Telescope keymaps<CR>', {noremap = true, silent =true})

-- commentary
map('n', '<leader>/', '<cmd>Commentary<CR>', {noremap = true, silent = true})
map('v', '<leader>/', '<cmd>Commentary<CR>', {noremap = true, silent = true})

-- markdown preview
map('n', '<leader>m', '<cmd>MarkdownPreviewToggle<CR>', {noremap = true, silent = true})

-- TroubleToggle
map('n', '<F4>', '<cmd>TroubleToggle<CR>', {noremap = true, silent = true})

-- SymbolsOutline
map('n', '<F3>', '<cmd>SymbolsOutline<CR>', {noremap = true, silent = true})

-- Edit markdown from plasticboy/vim-markdown
map('n', '<leader><F3>', '<cmd>Toc<CR>', {noremap = true, silent = true})

-- SidebarNvim
map('n', '<leader><F2>', '<cmd>SidebarNvimToggle<CR>', {noremap = true, silent = true})

-- PlugUpdate
map('n', '<leader><F12>', '<cmd>PlugUpdate<CR>', {noremap = true, silent = true})
map('n', '<F12>', '<cmd>!ctags -R<CR>', {noremap = true, silent = true})

-- NOTE: 이하 keymapping은 init.vim에 있음
-- vimwiki

-- NOTE: lsp.lua에 설정되어 있음
-- lsp_config
-- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
-- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
-- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
-- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
-- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
-- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
-- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
-- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
-- buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)


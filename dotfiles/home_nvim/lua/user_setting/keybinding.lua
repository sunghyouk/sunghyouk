vim.g.mapleader = ','
vim.g.maplocalleader = ';'

local map = vim.api.nvim_set_keymap

map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('n', '<leader>p', '<cmd>bp<CR>', {noremap = true, silent = false}) -- previous buffer
map('n', '<leader>n', '<cmd>bn<CR>', {noremap = true, silent = false}) -- next buffer
map('n', '<leader>d', '<cmd>bd<CR>', {noremap = true, silent = false}) -- close buffer

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- for plugin
-- nvim tree
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>', {noremap = true, silent = true})
map('n', '<leader>f', '<cmd>NvimTreeFindFile<CR>', {noremap = true, silent = true})

-- startify
map('n', '<leader>s', '<cmd>Startify<CR>', {noremap = true, silent = true})

-- vista
map('n', '<leader>v', '<cmd>Vista<CR>', {noremap = true, silent = true})

-- fzf
map('n', '<C-f>', '<cmd>Files<CR>', {noremap = true, silent =true})
map('n', '<leader>b', '<cmd>Buffers<CR>', {noremap = true, silent =true})
map('n', '<leader>g', '<cmd>Rg<CR>', {noremap = true, silent =true})
map('n', '<leader>t', '<cmd>Tags<CR>', {noremap = true, silent =true})
map('n', '<leader>m', '<cmd>Marks<CR>', {noremap = true, silent =true})

-- telescope
map('n', '<C-p>', '<cmd>Telescope find_files<CR>', {noremap = true, silent =true})
map('n', '<C-g>', '<cmd>Telescope live_grep<CR>', {noremap = true, silent =true})
map('n', '<C-b>', '<cmd>Telescope buffers<CR>', {noremap = true, silent =true})
map('n', '<C-t>', '<cmd>Telescope help_tags<CR>', {noremap = true, silent =true})

-- commentary
map('n', '<leader>/', '<cmd>Commentary<CR>', {noremap = true, silent = true})
map('v', '<leader>/', '<cmd>Commentary<CR>', {noremap = true, silent = true})

-- markdown preview
map('n', '<leader>mo', '<cmd>MarkdownPreview<CR>', {noremap = true, silent = true})
map('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', {noremap = true, silent = true})
map('n', '<leader>mt', '<cmd>MarkdownPreviewToggle<CR>', {noremap = true, silent = true})

-- NOTE: 이하 keymapping은 init.vim에 있음
-- sniprun
-- vimwiki
-- iron (default key)

-------------------------------------------------------------~
-- LHS(default)     RHS                                  MODE~
-------------------------------------------------------------~
-- ctr              |<Plug>(iron-send-motion)|              `n`
-- ctr              |<Plug>(iron-visual-send)|              `v`
-- cp               |<Plug>(iron-repeat-cmd)|               `n`
-- <localleader>sl  |<Plug>(iron-send-line)|                `n`
-- c<CR>            |<Plug>(iron-cr)|                       `n`
-- cst              |<Plug>(iron-interrupt)|                `n`
-- cq               |<Plug>(iron-exit)|                     `n`
-- cl               |<Plug>(iron-clear)|                    `n`
-------------------------------------------------------------~

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

-- NOTE: DAP는 init.vim에 설정되어 있음
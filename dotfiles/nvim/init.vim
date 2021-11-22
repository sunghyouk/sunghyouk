" setting for vim-plug (Neo-vim plugin manager)
call plug#begin('~/.vim/plugged')
    "Plugin for start window
    Plug 'mhinz/vim-startify'
    Plug 'airblade/vim-rooter' " change the project directory, freely
  
    " Plugin for file/class/function/variable/tags searching
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'liuchengxu/vista.vim' " WARN: optional plugin is needed all

    " Plugin for string/grep/file searching
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'

    Plug 'nvim-lua/plenary.nvim' " NOTE: It is needed for 'telescope', 'gitsigns'
    Plug 'nvim-telescope/telescope.nvim' " WARN: ripgrep, rg, ag install needed in terminal
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " NOTE for use telescope, needed

    " Plugin for todo
    Plug 'folke/todo-comments.nvim' " WARN: ripgrep, rg, ag install needed in terminal
    Plug 'folke/trouble.nvim' " NOTE: It is needed for 'todo-comments'

    " Plugin for coding
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'scrooloose/syntastic' " grammar check for separate window
    Plug 'tpope/vim-commentary' " space + /
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Plugin for LSP/complete suggestion
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'onsails/lspkind-nvim'

    " Plugin for git
    Plug 'tpope/vim-fugitive' " enable Git (e.g., Gdiff)
    Plug 'lewis6991/gitsigns.nvim'

    " Plugin for python REPL
    Plug 'hkupty/iron.nvim'
    Plug 'metakirby5/codi.vim'
    Plug 'akinsho/toggleterm.nvim'

    " Plugin for markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    
    " Plugin for Passive setting
    Plug 'blueyed/vim-diminactive'
    
    " Plugin for color scheme, status bar
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'akinsho/bufferline.nvim'
    Plug 'arcticicestudio/nord-vim'

    " Plugin for notify
    Plug 'rcarriga/nvim-notify'

call plug#end()

" call user lua setting
lua require('user_setting')

let g:loaded_perl_provider=0 " Perl provider disable

" =====Setting for each plugin excluding plugin maintained with lua
" =====startify
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent']            },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" =====nvim-tree
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'notify',
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them
set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

" =====Vista from tagbar (from ctags to universal-tags)
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'nvim_lsp'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

" =====telescope
nnoremap <C-p> :Telescope find_files<cr>
nnoremap <C-g> :Telescope live_grep<cr>
nnoremap <C-b> :Telescope buffers<cr>
nnoremap <C-t> :Telescope help_tags<cr>

" =====vim-diminactive
let g:diminactive_enable_focus=1

" =====syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_loc_list_height=10
let g:syntastic_python_python_exec='python3'
let g:syntastic_python_checkers=['flake8']

let g:syntastic_error_symbol = '✖'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '☒' 

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" =====commentary (from nerdcommenter)
nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>

" =====Codi
" Change the color
highlight CodiVirtualText guifg=cyan
let g:codi#virtual_text_prefix = "❯ "

" =====Color scheme
" =====nord
colorscheme nord " color scheme
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_italic=1
let g:nord_italic_comments=1

" =====Setting for keymap
let mapleader = '\<space>'
let maplocalleader = '\\'

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nmap <Leader>1 :bp<CR>
nmap <Leader>2 :bn<CR>
nmap <C-w> :bd<CR>

" =====MarkdownPreview
nmap <Leader>mo :MarkdownPreview<CR>
nmap <Leader>ms :MarkdownPreviewStop<CR>
nmap <Leader>mt :MarkdownPreviewToggle<CR>

" =====<ESC> 입력 시 <C-\><C-n> 실행 => 터미널 모드에서 기본 모드로 전환
tnoremap <silent><ESC> <C-\><C-n>

" =====Custom setting
syntax on " 형식별 구문 강조 표시
set number " 라인 넘버 표시. (= nu)
set signcolumn=number
set showcmd " 사용자가 입력한 명령어 표시
set showmatch " 현재 선택된 괄호의 쌍을 표시
set relativenumber " 커서를 기준으로 라인 넘버 표시. 커서 위치에 따라 바뀜. (= rnu)
set cursorline " 커서가 있는 라인을 강조 표시. (= cul)
set ruler " 커서 위치 표시. (= ru)
set laststatus=2 " 상태바 표시. (= ls) [0: 상태바 미표시 / 1: 2개 이상의 윈도우에서 표시 / 2: 항상 표시]
set mouse=a " 마우스로 스크롤 및 리사이즈 가능. [n : Normal mode / v : Visual mode / i : Insert mode / a : All modes]

" Searching setting
set hlsearch " 검색된 결과 강조 표시. (= hls)
set ignorecase " 검색시 대소문자를 구분하지 않음. (= ic)
set incsearch " 검색어를 입력할 때마다 일치하는 문자열을 강조해서 표시. (= is)
set smartcase " ignore 옵션이 켜져있더라도 검색어에 대문자가 있다면 정확히 일치하는 문자열을 찾음. (= scs)

" Indentation and Tab setting
set autoindent " 새로운 라인이 추가될 때, 이전 라인의 들여쓰기에 자동으로 맞춤. (= ai)
set textwidth=119 " lines longer than 119 columns will be broken
set expandtab  " Tab을 Space로 변경. (= et)
set tabstop=4 " 탭으로 들여쓰기시 사용할 스페이스바 개수. (= ts)
set shiftwidth=4 " <<, >> 으로 들여쓰기시 사용할 스페이스바 개수. (= sw)
set shiftround
set softtabstop=4 " 스페이스바 n개를 하나의 탭으로 처리. (= sts)
" ex) 스페이스바 4개가 연속으로 있다면 백스페이스로 스페이스바를 지우면 스페이스바 4개를 하나의 탭으로 인식해 삭제.
filetype indent on " indent.vim 파일에 설정된 파일 형식별 들여쓰기 적용.

" Input setting
set clipboard=unnamed " vim에서 복사한 내용이 클립보드에 저장
set backspace=eol,start,indent " 라인의 시작과 끝의 들여쓰기를 백스페이스로 지움.
set history=1000 " 편집한 내용 저장 개수 (되돌리기 제한 설정)
set pastetoggle=<F3> " paste 옵션이 적용되면 들여쓰기가 제대로 작동하지 않기 때문에 toggle식으로 옵션을 키고 끌 수 있음.
set fileencodings=utf-8

" autocommand
autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   wincmd w
            \ | endif

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

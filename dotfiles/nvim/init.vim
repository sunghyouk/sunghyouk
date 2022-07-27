" Through neovim plugin manager
call plug#begin('~/.vim/plugged')
    Plug 'mhinz/vim-startify' " Plugin for start window
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'sidebar-nvim/sidebar.nvim'

    " Plugin for string/grep/file searching
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'nvim-lua/plenary.nvim' " NOTE: It is needed for 'telescope', 'gitsigns', 'null-ls'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim' " NOTE: ripgrep, rg, ag, fd install needed in terminal
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " NOTE: for use telescope, needed
    
    " Plugin for todo
    Plug 'folke/todo-comments.nvim' " NOTE: ripgrep, rg, ag install needed in terminal
    Plug 'folke/trouble.nvim' " NOTE: It is needed for 'todo-comments'

    " Plugin for coding
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'jose-elias-alvarez/null-ls.nvim'
    Plug 'tpope/vim-commentary' " NOTE: USAGE: gc{motion}
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Plugin for Language support protocol/complete suggestion/code snippet
    Plug 'neovim/nvim-lspconfig' " NOTE: main lsp plugin
    Plug 'hrsh7th/nvim-cmp' " NOTE: main auto-completion plugin
    Plug 'hrsh7th/cmp-nvim-lsp' " NOTE: dependency of nvim-cmp
    Plug 'L3MON4D3/LuaSnip' " NOTE: autocomplete you snippet
    Plug 'saadparwaiz1/cmp_luasnip' " NOTE: snippet completion source
    Plug 'onsails/lspkind-nvim' " NOTE: autocompletion icons
    Plug 'williamboman/nvim-lsp-installer' " NOTE: lsp-installer

    " Plugin for git
    Plug 'tpope/vim-fugitive' " NOTE: enable Git (e.g., Gdiff)
    Plug 'lewis6991/gitsigns.nvim'

    " Plugin for python REPL, debug adapter protocol
    Plug 'kassio/neoterm'
    Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
    Plug 'hkupty/iron.nvim'
    Plug 'akinsho/toggleterm.nvim'

    " Plugin for markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown']} 
    
    " Plugin for Passive setting
    Plug 'blueyed/vim-diminactive' " NOTE: inactive buffer will gray
    Plug 'folke/which-key.nvim'
    Plug 'karb94/neoscroll.nvim' " NOTE: smooth scroll when using <C-u>, <C-d>
    Plug 'simrat39/symbols-outline.nvim' "NOTE: tree-like view for symbols using LSP
    
    " Plugin for color scheme, status bar
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'akinsho/bufferline.nvim'
    Plug 'folke/lsp-colors.nvim'

    " Plugin for Colorscheme
    Plug 'shaunsingh/nord.nvim'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'navarasu/onedark.nvim'
    
    " Plugin for Coding, Text - pairing parenthesis, selecting multi-identical text
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'windwp/nvim-autopairs'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'easymotion/vim-easymotion'
    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-entire' " NOTE: ae - targets the entire content, ie - does not include leading and trailing empty lines
    Plug 'nelstrom/vim-visual-star-search' " NOTE: <leader>* - vim will recursively vimgrep for the word under the cursor or the visual selection. 
    Plug 'tpope/vim-abolish' " NOTE: :S(ubvert)/{man,dog}/{dog,man}/g
    Plug 'lukas-reineke/headlines.nvim'

    " Plugin for vimwiki
    Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

    " Plugin for vimtex
    Plug 'lervag/vimtex'
    
    " Plugin for pandoc
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax' " NOTE: more syntax highlight and better conceal feature

    " Plugin for startup time
    Plug 'dstein64/vim-startuptime'

call plug#end()

" =====Call user lua setting
lua require('user_setting')

" =====Setting for each plugin to ~/.vim/vim-include/set-<plugin_name>.vim
for include_file in uniq(sort(globpath(&rtp, 'vim-include/*.vim', 0, 1)))
    execute "source " . include_file
endfor

" =====FZF
set rtp+=/usr/local/opt/fzf

" =====사용자 추가 맞춤법 설정 파일
" setlocal spellfile=~/.config/nvim/custom.add

"colorscheme onedark
"colorscheme dawnfox " NOTE: dark: nightfox, nordfox, duskfox, terafox light: dawnfox, dayfox
"colorscheme nord
"colorscheme tokyonight " Storm, Night, Day " WARN: set in tokyonight.lua

" =====Programming language setting
let g:python3_host_prog='/opt/anaconda3/bin/python3'
let g:ruby_host_prog='/Users/sunghyouk/.rbenv/shims/neovim-ruby-host'
let g:perl_host_prog='/Users/sunghyouk/.plenv/shims/perl'
let g:node_host_prog='/Users/sunghyouk/.nvm/versions/node/v16.13.1/bin/neovim-node-host'

" =====Custom setting
filetype plugin indent on
syntax enable " 형식별 구문 강조 표시

set nocompatible
set termguicolors " this variable must be enabled for colors to be applied properly for nvim-tree, bufferline (NOTE)
set hidden
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

" Autocompletion setting
set wildmenu
set wildmode=full

" Indentation and Tab setting
set autoindent " 새로운 라인이 추가될 때, 이전 라인의 들여쓰기에 자동으로 맞춤. (= ai)
set textwidth=120 " lines longer than 119 columns will be broken
set expandtab " Tab을 Space로 변경. (= et)
set tabstop=4 " 탭으로 들여쓰기시 사용할 스페이스바 개수. (= ts)
set shiftwidth=4 " <<, >> 으로 들여쓰기 시 사용할 스페이스바 개수. (= sw)
set shiftround
set softtabstop=4 " 스페이스바 n개를 하나의 탭으로 처리. (= sts)
" ex) 스페이스바 4개가 연속으로 있다면 백스페이스로 스페이스바를 지우면 스페이스바 4개를 하나의 탭으로 인식해 삭제.

" Input setting
set clipboard=unnamed " vim에서 복사한 내용이 클립보드에 저장
set pastetoggle=<F5>
set backspace=eol,start,indent " 라인의 시작과 끝의 들여쓰기를 백스페이스로 지움.
set history=1000 " 편집한 내용 저장 개수 (되돌리기 제한 설정)
set fileencodings=utf-8

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 파일을 저장할 때마다 코드 전체의 색인 파일을 새로 생성
"autocmd BufWritePost * call system("ctags -R")

" =====Setting for keymap
let maplocalleader="\<space>"

" =====현재 활성 버퍼의 경로로 확장 :%% 입력
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" =====Abbreviation
ca ㅈ w
ca ㅈㅂ wq
ca ㅕㅔ up

" =====C++
" Compile
nnoremap <silent> <F6> :<c-u>make %< <CR>
" Execute
nnoremap <silent> <F7> :<c-u>term ./%< <CR>

" =====Vimwiki
command! WikiIndex :VimwikiIndex
nmap <LocalLeader>ww <Plug>VimwikiIndex
"nmap <LocalLeader>wt <Plug>VimwikiTabIndex
nmap <LocalLeader>ws <Plug>VimwikiUISelect
"nmap <LocalLeader>wi <Plug>VimwikiDiaryIndex
"nmap <LocalLeader>w<LocalLeader>w <Plug>VimwikiMakeDiaryNote
"nmap <LocalLeader>w<LocalLeader>t <Plug>VimwikiTabMakeDiaryNote
"nmap <LocalLeader>w<LocalLeader>y <Plug>VimwikiMakeYesterdayDiaryNote
nmap <LocalLeader>wh <Plug>Vimwiki2HTML
nmap <LocalLeader>whh <Plug>Vimwiki2HTMLBrowse
nmap <LocalLeader>wt :VimwikiTable<CR>
nmap <Tab>d 0f]lli__date<Space><esc>

" =====Neoterm
" Use gx{text-object} in normal mode
nmap go <Plug>(neoterm-repl-send)
" Send selected contents in visual mode
xmap go <Plug>(neoterm-repl-send)
" Send lines
nmap goo <Plug>(neoterm-repl-send-line)

" =====<ESC> 입력 시 <C-\><C-n> 실행 => 터미널 모드에서 기본 모드로 전환
tnoremap <silent><ESC> <C-\><C-n>

" Sniprun
nmap <leader>ff <Plug>SnipRun
nmap <leader>f <Plug>SnipRunOperator
vmap f <Plug>SnipRun


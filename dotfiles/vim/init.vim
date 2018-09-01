"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Files Navigation
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'kshenoy/vim-signature'

"""" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'jebaum/vim-tmuxify'

"""" Code Plugins
Plug 'Raimondi/delimitMate'
Plug 'docunext/closetag.vim'
Plug 'tpope/vim-commentary'
Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets' | Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim'

"""" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'cohama/agit.vim'

"""" Linters
Plug 'w0rp/ale'

"""" Eye candy
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'

"""" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'slashmili/alchemist.vim'

"""" Other plugins
Plug 'duggiefresh/vim-easydir'
Plug 'terryma/vim-multiple-cursors'
Plug 'wakatime/vim-wakatime'


call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Space> i
nmap <C-i> ggvG=<CR>
nmap ; <Esc>:Files<CR>
nmap <Leader>, <Esc>:Ag<CR>
nmap <Leader>. <Esc>:Buffers<CR>
nmap <Leader>; <Esc>:Explore<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.html set filetype=html.htmldjango
au BufRead,BufNewFile *.py set filetype=python.django
au FileType python set shiftwidth=4 tabstop=4 softtabstop=4 colorcolumn=80 completeopt-=preview
au FileType elixir set colorcolumn=80
au BufWritePre * :%s/\s\+$//e
au VimEnter * RainbowParenthesesToggleAll


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
scriptencoding utf-8
set encoding=utf-8

filetype on
filetype plugin on
filetype plugin indent on

" Idention
set smarttab
set expandtab
set autoindent
set smartindent
set tabstop=2
set showtabline=1
set shiftwidth=2

" Search
set hlsearch
set showmatch
set incsearch
set ignorecase

" User interface
set ruler
set number
set wildmenu
set novisualbell
set mouse=a
set ttymouse=sgr
set cmdheight=1
set linespace=0
set laststatus=2

" Folding
set nofoldenable
set foldlevel=2
set foldnestmax=10
set foldmethod=indent

" Miscellaneous
set confirm
set noshowcmd
set nobackup
set nowritebackup
set noswapfile
set backspace=2
set clipboard=unnamed
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*deps/*,*_build/*,*node_modules/*

" Performance
set ttyfast
set lazyredraw
set ttyscroll=3
set regexpengine=1
set synmaxcol=128


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_localrmdir="rm -rf"
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_liststyle = 1
let g:netrw_banner = 0
let mapleader = "\\"
let g:loaded_matchparen=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme and Colors Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set t_Co=256
set background=dark
hi Comment cterm=italic
colorscheme pencil

let python_highlight_all = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airlines Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RBPT Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_lint_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Alchemy Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:alchemist_compile_basepath = "/app/src/"

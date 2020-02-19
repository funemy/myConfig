" plugin
call plug#begin()
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
Plug 'scrooloose/nerdcommenter'
" Plug 'itchyny/lightline.vim'
" Plug 'maralla/completor.vim'
" Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'scrooloose/nerdtree'
call plug#end()            " required

" set leader to space
let mapleader=" "

" set language to English
language en_US

" color scheme
set termguicolors
set background=dark
let g:gruvbox_material_background='hard'
" disable italic comment
let g:gruvbox_material_disable_italic_comment = 1
colorscheme gruvbox-material

" global/unknown
filetype off                  " required
filetype plugin indent on    " required
syntax on                      "语法支持
syntax enable

" utf-8 encoding
set encoding=utf-8
set fileencoding=utf-8

" space/tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=indent,eol,start

" ui
set hidden
set number "show line number
set showcmd
set cursorline
set cursorcolumn
set wildmenu "visual autocomplete for command menu
set showmatch "hightlight match brace
set nobackup
set noswapfile
set selectmode=mouse,key
set completeopt="menuone" "autocomplete ui
set noshowmode

" change cursor style under different mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" light line
" set laststatus=2

" nerd commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" completer
" let g:completor_completion_delay = 20
" let g:completor_python_binary = "/usr/local/bin/python3"
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
" let g:completor_complete_options = 'menuone,noselect'

" pymode
" let g:pymode_python = 'python3'
" let g:pymode_rope_completion = 1
" let g:pymode_rope=0
" let g:pymode_folding=0

"NERDTree config
"autocmd vimenter * NERDTree "
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-t> :NERDTreeToggle<CR>
map <leader>t :NERDTreeToggle<CR>

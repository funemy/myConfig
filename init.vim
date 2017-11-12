" plugin
call plug#begin()

Plug 'https://github.com/klen/python-mode'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-ruby/vim-ruby'
Plug 'eagletmt/neco-ghc'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()            " required

" set language to English
language en_US

" global/unknown
filetype plugin indent on    " required
syn on                      "语法支持
syntax enable
filetype off                  " required

" color scheme
set background=dark
colorscheme solarized

" set leader to space
let mapleader=" "

" space/tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" ui
set hidden
set number " show line number
set showcmd
set cursorline
set cursorcolumn
set wildmenu " visual autocomplete for command menu
set showmatch " hightlight match brace
set nobackup
set noswapfile
set selectmode=mouse,key

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" arline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"tagbar config
nmap <F8> :TagbarToggle<CR>

"NERDTree config
"autocmd vimenter * NERDTree "自动载入NERDTree
"在无文件时自动载入NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-t> :NERDTreeToggle<CR>
map <leader>t :NERDTreeToggle<CR>

"pymode config
"disable the completion on dot funtion
"due to the conflict with YCM
"let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope=0
let g:pymode_python='python3'
" unabled python-mode auto folding
let g:pymode_folding=0

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

" supertab config
let g:SuperTabRetainCompletionType=2

" easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" deoplete
let g:deoplete#enable_at_startup = 1

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

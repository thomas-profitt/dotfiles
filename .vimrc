call pathogen#infect()
let g:aldmeris_transparent = 0
let g:syntastic_cpp_compiler_options = "-std=c++11"

syntax on
colorscheme flatlandia

set autoindent
set breakindent

set ruler
set cursorline
set cursorcolumn

set tabpagemax=100

filetype plugin on
runtime macros/matchit.vim
set omnifunc=syntaxcomplete#Complete

set list
set listchars=tab:\│\ ,trail:·

set matchpairs+=<:>

set showbreak=+\ 

set mouse=a

" Work with our git repos
set binary
set noeol

" Finger-savers
nore ; :
nore , ;
imap jj <Esc>

" I may never want to use vim's registers.
nnoremap y  "+y
nnoremap yy "+yy
nnoremap d  "+d
nnoremap dd "+dd
nnoremap p "+p
nnoremap P "+P
vnoremap y "+y
vnoremap d "+d
vnoremap p "+p
vnoremap P "+P

" Fix backspace not working in insert mode in iTerm2
set backspace=indent,eol,start

set colorcolumn+=81
set colorcolumn+=101
set colorcolumn+=121
set colorcolumn+=141
set colorcolumn+=161

set tabstop=2
set shiftwidth=2
set softtabstop=2
set et

set hlsearch
nnoremap <CR> :noh<CR>

" nvim and non-nvim specific config
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
else
  set ttymouse=sgr
endif

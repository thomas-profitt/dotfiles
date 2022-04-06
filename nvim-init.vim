let g:pathogen_disabled = ["indentLine", "swift.vim", "vim-ping-cursor", "MatchTag"]
call pathogen#infect()

set termguicolors
" Needed to get vim 8 termguicolors to work in tmux with TERM=screen-256color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:aldmeris_transparent = 0
let g:syntastic_cpp_compiler_options = "-std=c++11"
let g:indentLine_color_gui = '#4C453B'
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark="normal"

syntax on
set background=dark
" colorscheme gruvbox
colorscheme yin

set ruler
" set cursorline
set cursorcolumn

set ttyfast

set hidden
set tabpagemax=100

filetype plugin on
runtime macros/matchit.vim
set omnifunc=syntaxcomplete#Complete

set list
set listchars=tab:\│\ ,trail:·

set matchpairs+=<:>

set wrap linebreak
set showbreak=+\ 

set mouse=a

" I'll choose when I want EOLs!
set binary
set noeol

" Finger-savers
nore ; :
imap jj <Esc>
imap jt <Esc>

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

nnoremap j gj
nnoremap k gk

nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-O> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Fix backspace not working in insert mode in iTerm2
set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set breakindent
set nosmartindent

set ignorecase
set smartcase
set hlsearch
set incsearch
nnoremap <CR> :noh<CR>

set fdo-=search

" Statusline
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Autocmd
autocmd BufNewFile,BufReadPost *.hamlbars set filetype=haml
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END
"autocmd BufWinEnter * NERDTreeMirror

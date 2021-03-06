let g:pathogen_disabled = ["brightscript.vim", "indentLine", "swift.vim", "vim-ping-cursor"]
call pathogen#infect()

set termguicolors
" Needed to get vim 8 termguicolors to work in tmux with TERM=screen-256color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:aldmeris_transparent = 0
let g:syntastic_cpp_compiler_options = "-std=c++11"
let g:indentLine_color_gui = '#4C453B'
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark="hard"

syntax on
set background=dark
colorscheme gruvbox

set autoindent
set breakindent

set ruler
"set cursorline
set cursorcolumn

set tabpagemax=100

filetype plugin on
runtime macros/matchit.vim
set omnifunc=syntaxcomplete#Complete

set list
set listchars=tab:\│\ ,trail:·

set matchpairs+=<:>

set wrap linebreak nolist
set showbreak=+\ 

set mouse=a

" I'll choose when I want EOLs!
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

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Fix backspace not working in insert mode in iTerm2
set backspace=indent,eol,start

"set colorcolumn+=81
"set colorcolumn+=101
"set colorcolumn+=121
"set colorcolumn+=141
"set colorcolumn+=161

set tabstop=2
set shiftwidth=2
set softtabstop=2
set et

set hlsearch
nnoremap <CR> :noh<CR>

" Statusline
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Autocmd
autocmd BufNewFile,BufReadPost *.hamlbars set filetype=haml

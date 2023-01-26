execute pathogen#infect()
filetype plugin indent on
set encoding=utf-8
" Enable syntax highlighting
syntax on

" Use 4 spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4

set mouse=a

" Show matchrng brackets
set showmatch

" Enable line wrapping
set wrap

" Enable auto indentation
set autoindent

" Enable line numbers in the gutter
set relativenumber

" Enable search highlighting
set hlsearch

" Enable undo history
set undofile
set undodir=~/.vim/undo

" Enable the nerdtree file explorer
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.pyc$', '\~$'] " ignore files and folders
nmap <F9> :NERDTree<CR>

" Enable the airline status bar
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

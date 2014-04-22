""""""""""""
" Pathogen "
""""""""""""
execute pathogen#infect()
call pathogen#helptags()

"""""""""""""""""
" File Encoding "
"""""""""""""""""
set encoding=utf-8 " have some unicode

"""""""""""""
" Interface "
"""""""""""""
set number " show line numbers
set ruler " show line/column numbers
set cursorline " draw a line where the cursor is
set laststatus=2 " show a permanent status line (for Airline)
set backspace=indent,eol,start " make backspace act normally
" go up and down by screen line
nnoremap j gj
nnoremap k gk

""""""""""""""""""""""""""""""""
" Syntax Highlighting & Colors "
""""""""""""""""""""""""""""""""
syntax on " enable syntax highlighting
set background=dark " we use a dark background
colorscheme solarized " set solarized

"""""""""""""
" Indenting "
"""""""""""""
set tabstop=4 " 4 columns is a tab
set shiftwidth=4 " set the same for auto indenting
set softtabstop=4 " ensure we always use spaces for indenting
set expandtab " when using tab, use the tabstop value of spaces
set autoindent " attempt to indent automatically

"""""""""""""""""
" Line Wrapping "
""""""""""""""""
set textwidth=80 " lines should be wrapped at 80 chars
set formatoptions+=t " wrap at word boundaries
set colorcolumn=80 " show a marker on the 80 column line

""""""""""""""""""""
" Filetype Plugins "
""""""""""""""""""""
filetype on
filetype plugin on

""""""""
" Undo "
""""""""
set undofile " save undo files after closing
set undodir=$HOME/.vimundo " place to save undo files
set undolevels=1000 " how many undos
set undoreload=10000 " number of lines to save for undo

"""""""""""""""""""""""""""""""
" Filetype Specific Overrides "
"""""""""""""""""""""""""""""""

""""""""""""""""""""""""
" Plugin Configuration "
""""""""""""""""""""""""
let  g:airline_powerline_fonts=1 " use powerline fonts
set noshowmode " don't show the mode selector twice
set ttimeoutlen=50 " speed up coming out of insert

let g:gitgutter_realtime=1 " update when typing stops
let g:gitgutter_eager=1 " update when tab/buffer changes

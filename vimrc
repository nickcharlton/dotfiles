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

""""""""
" Undo "
""""""""
set undofile " save undo files after closing
set undodir=$HOME/.vimundo " place to save undo files
set undolevels=1000 " how many undos
set undoreload=10000 " number of lines to save for undo

""""""""""""""
" Copy/Paste "
""""""""""""""
set pastetoggle=<F2> " use F2 to toggle paste

""""""""""""""""""""
" Filetype Plugins "
""""""""""""""""""""
filetype on " detect and use filetypes
filetype plugin on " from plugins, too

"""""""""""""""""""""""""""""""
" Filetype Specific Overrides "
"""""""""""""""""""""""""""""""
" ruby should be two spaces per tab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
" XML/HTML should be two spaces per tab
autocmd FileType html,xhtml,htmldjango,jinjahtml setlocal shiftwidth=2 tabstop=2 softtabstop=2
" erb/scss should be two spaces per tab
autocmd FileType erb,scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
" detect CocoaPods files
au BufNewFile,BufRead Podfile,*.podspec set filetype=ruby
" detect Vagrant files
au BufNewFile,BufRead Vagrantfile set filetype=ruby
" detect Homebrew files
au BufNewFile,BufRead Berksfile set filetype=ruby

""""""""""""""""""""""""
" Plugin Configuration "
""""""""""""""""""""""""
let  g:airline_powerline_fonts=1 " use powerline fonts
set noshowmode " don't show the mode selector twice
set ttimeoutlen=50 " speed up coming out of insert

let g:gitgutter_realtime=1 " update when typing stops
let g:gitgutter_eager=1 " update when tab/buffer changes

let g:pandoc_no_folding=1 " don't autofold pandoc
let g:pandoc_use_conceal=0 " disable conceal

" show syntastic errors in the margin
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_style_rror_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='⚠'

let g:syntastic_check_on_open=1 " automatically check

" enable specific syntastic checkers
let g:syntastic_ruby_checkers=['mri', 'rubocop']

""""""""""""""""
" tmuxline.vim "
""""""""""""""""
let g:airline#extensions#tmuxline#enabled=0 " define the theme from the snapshot
let g:tmuxline_preset = {
      \'a'    : '#S:#I.#P',
      \'b'    : '#H',
      \'win'  : ['#I:#W'],
      \'cwin' : ['#I:#W #F'],
      \'y'    : '#(uptime | cut -d "," -f 3- | cut -d ":" -f2 | sed -e "s/^[ \t]*//")',
      \'z'    : ['%a %d %b %Y', '%H:%M'],
      \'options' : {'status-justify' : 'left'}}

let g:tmuxline_theme = {
    \   'a'    : [ 234, 148 ],
    \   'b'    : [ 0,  33 ],
    \   'c'    : [ 255, 235 ],
    \   'x'    : [ 255, 235 ],
    \   'y'    : [ 167, 237 ],
    \   'z'    : [ 136, 235 ],
    \   'win'  : [ 244, 235 ],
    \   'cwin' : [ 166, 235 ],
    \   'bg'   : [ 244, 236 ],
    \ }

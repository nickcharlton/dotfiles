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
set list listchars=tab:→\ ,trail:· " highlight tabs and trailing spaces
set list

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
vnoremap <C-c> "*y

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split Panes                                                             "
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow
set splitright

" ctrl-j to go down, not ctrl-w + j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""
" Filetype Plugins "
""""""""""""""""""""
filetype on " detect and use filetypes
filetype plugin on " from plugins, too

"""""""""""""""""""""""""""""""
" Filetype Specific Overrides "
"""""""""""""""""""""""""""""""
" better spelling for text and markdown
autocmd FileType text,markdown,mkd,pandoc call lexical#init()
" ruby should be two spaces per tab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
" javascript should be two spaces per tab
autocmd FileType javascript,json setlocal shiftwidth=2 tabstop=2 softtabstop=2
" yaml should be two spaces per tab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
" XML/HTML should be two spaces per tab
autocmd FileType html,xhtml,htmldjango,jinjahtml,haml,html.handlebars setlocal shiftwidth=2 tabstop=2 softtabstop=2
" erb/scss should be two spaces per tab
autocmd FileType eruby,scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
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

let g:lexical#spelllang = ['en_us','en_gb',]

let g:pandoc#modules#disabled = ['folding', 'bibliographies']
let g:pandoc#formatting#mode = 'ha' " enable auto hard wrapping
let g:pandoc#formatting#smart_autoformat_on_cursormoved = 1
let g:pandoc#syntax#conceal#use = 0 " disable conceal

" show syntastic errors in the margin
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_style_rror_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='⚠'

let g:syntastic_check_on_open=1 " automatically check

" enable specific syntastic checkers
let g:syntastic_ruby_checkers=['mri', 'rubocop']
let g:syntastic_ruby_rubocop_exec='/Users/nickcharlton/.gem/ruby/2.4.0/bin/rubocop'

" enable SuperTab's context mode
let g:SuperTabDefaultCompletionType = 'context'

" ctrlp.vim
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" ack.vim / ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

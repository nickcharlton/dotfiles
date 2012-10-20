" enable pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set encoding=utf-8 " have some unicode

" interface
set number " show line numbers
set showcmd " show the current command
set showmode
set ruler " show standard line/column numbers
set cursorline " indicate what line we're on
set scrolloff=3
set hidden
set ttyfast
set backspace=indent,eol,start
set undofile

" go and down by screenline
nnoremap j gj
nnoremap k gk

" search
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" indenting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set expandtab
set autoindent

" search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" colours
syntax enable
set background=dark
colorscheme solarized

" status bar (powerline)
set laststatus=2
let g:Powerline_symbols = 'fancy'

" enable filetype plugins
filetype on
filetype plugin on

" system paste (disable autoindenting when pasting from the system)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" better copy/paste support
" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" plugins

" only enable CloseTag for HTML/XML like files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" specific language support

" ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 

" CSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Markdown
autocmd BufNewFile,BufRead *.txt,*.markdown,*.md setlocal ft=markdown

" Nginx Conf
au BufRead,BufNewFile /etc/nginx/* set ft=nginx

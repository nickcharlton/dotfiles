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
set modeline " enable the mode line
set modelines=2 " and look for the first two lines

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

" store swap files in a fixed directory
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set undodir=~/.vimundo//

" plugins

" only enable CloseTag for HTML/XML like files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim
autocmd FileType html,xhtml,htmldjango,jinjahtml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" don't autofold pandoc docs
let g:pandoc_no_folding = 1

" syntastic

" show in the status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" show fancy errors in the margin
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" make it automatic
let g:syntastic_check_on_open=1

" active is automatic
" passive can be triggered
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['python', 'c', 'cpp', 'css', 
                            \ 'javascript', 'cuda', 'haskell', 'html', 
                            \ 'matlab', 'less', 'objc', 'php', 'sh'],
                            \ 'passive_filetypes': ['json', 'xml', 'yaml'] }

" specific language support

" ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 

" CSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Nginx Conf
au BufRead,BufNewFile /etc/nginx/* set ft=nginx

" CocoaPods
au BufNewFile,BufRead Podfile,*.podspec set filetype=ruby
" Vagrant
au BufNewFile,BufRead Vagrantfile set filetype=ruby
" Berkshelf
au BufNewFile,BufRead Berksfile set filetype=ruby

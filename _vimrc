" enable pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" interface
set number " show line numbers
set showcmd
set ruler
set cursorline " indicate what line we're on

" indenting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set expandtab
set autoindent

" colours
syntax enable
set background=dark
colorscheme solarized

" status bar ([filename] [type] [position])
set statusline=%F%m%r%h%w\ [Filetype:\ %Y]\ [Lines:\ %L]\ [%p%%]
set laststatus=2

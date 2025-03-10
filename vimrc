" Leader
let mapleader = " "

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

"""""""""""""""""
" File Encoding "
"""""""""""""""""
set encoding=utf-8 " have some unicode

"""""""""""""
" Interface "
"""""""""""""
set mouse="" " disable the mouse
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
set showcmd " display incomplete commands
set incsearch " do incremental searching
set autowrite " Automatically :write before running commands
set autoread  " automatically read files which are changed outside of vim

nnoremap <Leader><Leader> <c-^> " Switch between the last two files

""""""""""""""""""""""""""""""""
" Syntax Highlighting & Colors "
""""""""""""""""""""""""""""""""
function! CustomHighlights() abort
  highlight ColorColumn ctermbg=236
  highlight CursorColumn ctermbg=237 cterm=NONE
  highlight CursorLine ctermbg=237 cterm=NONE
  highlight! link SignColumn LineNr
  highlight VertSplit ctermfg=236 ctermbg=0
  highlight TabLine ctermfg=8 ctermbg=0 cterm=NONE
  highlight TabLineSel ctermfg=7 ctermbg=0
  highlight TabLineFill ctermfg=0
endfunction

augroup CustomColors
  autocmd!
  autocmd ColorScheme * call CustomHighlights()
augroup END

syntax on " enable syntax highlighting
colorscheme dim

"""""""""""""
" Indenting "
"""""""""""""
set tabstop=2 " 2 spaces to a tab
set shiftwidth=2 " and again
set shiftround
set expandtab

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
nnoremap <silent> vv <C-w>v " vv to generate new vertical split

" remap neovim terminal mode switch
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

"""""""""""""""""""""""
" Search with ripgrep "
"""""""""""""""""""""""
let g:ctrlp_user_command = 'rg --files %s'
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'

""""""""""""""""""""
" Filetype Plugins "
""""""""""""""""""""
filetype plugin indent on " detect and use filetypes

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufNewFile,BufRead *.prawn,Brewfile set filetype=ruby
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
  au BufRead,BufNewFile */.github/*/*.y{,a}ml
                                \ let b:ale_linters = {'yaml': ['actionlint']}
augroup END

""""""""""""""""""""""""
" Plugin Configuration "
""""""""""""""""""""""""
let g:airline_powerline_fonts=1 " use powerline fonts
set noshowmode " don't show the mode selector twice
set ttimeoutlen=50 " speed up coming out of insert

let g:gitgutter_realtime=1 " update when typing stops
let g:gitgutter_eager=1 " update when tab/buffer changes

let g:pandoc#modules#disabled = ['folding', 'bibliographies']
let g:pandoc#formatting#mode = 'ha' " enable auto hard wrapping
let g:pandoc#formatting#smart_autoformat_on_cursormoved = 1
let g:pandoc#syntax#conceal#use = 0 " disable conceal
let g:ale_linter_aliases = {'pandoc': ['markdown']} " use markdown linters

" setup tab complete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

let g:airline#extensions#ale#enabled = 1 " set ale to use airline
let g:ale_virtualtext_cursor = 'current' " show error/warning text on current
nmap <silent> <C-[> <Plug>(ale_previous_wrap)
nmap <silent> <C-]> <Plug>(ale_next_wrap)

" vim-test mappings
nnoremap <silent> <Leader>t :TestFile<CR>
nnoremap <silent> <Leader>s :TestNearest<CR>
nnoremap <silent> <Leader>l :TestLast<CR>
nnoremap <silent> <Leader>a :TestSuite<CR>
nnoremap <silent> <Leader>gt :TestVisit<CR>

" map Run to leader-r
nnoremap <Leader>r :Run<CR>

" use F5 for undo history tree
nnoremap <F5> :MundoToggle<CR>
let g:mundo_width = 60
let g:mundo_preview_height = 40

" trim out whitespace
nnoremap <leader>; mz:%s/\s\+$//<cr>:let @/=''<cr>`z<cr>:w<cr>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Run a given vim command on the results of alt from a given path.
function! AltCommand(path, vim_command)
  let l:alternates = system("alt " . a:path)
  let l:alternate = split(l:alternates)[0]
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

" Find the alternate file for the current path and open it
command A :call AltCommand(expand('%'), ':e')
command AS :call AltCommand(expand('%'), ':sp')
command AV :call AltCommand(expand('%'), ':vs')

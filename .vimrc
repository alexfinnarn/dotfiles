set nocompatible

" ::::::::: vim-plug ::::::::::::::::::::::
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-sensible'
Plug 'https://git.drupal.org/project/vimrc.git', { 'branch': '7.x-1.x', 'rtp': 'bundle/vim-plugin-for-drupal' }

call plug#end()

" Ctrl+p settings.
"let g:ctrlp_map='<c-p>'
"let g:ctrlp_cmd='CtrlP'
"let g:ctrlp_working_path_mode='ra'
"if exists("g:ctrlp_user_command")
"				  unlet g:ctrlp_user_command
"endif

noremap <c-p> :FZF <CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar,*.gz,*/libraries/*,*/vendor/*

" Enhance command-line completion.
set wildmenu

" Add the g flag to search/replace by default.
set gdefault

" Enable line numbers.
set number

" Enable syntax highlighting.
syntax on

" Make tabs as wide as two spaces.
set tabstop=2

" Highlight searches.
set hlsearch

" Ignore case of searches.
set ignorecase

" Highlight dynamically as pattern is typed.
set incsearch

" Always show status line.
set laststatus=2

" Enable mouse in all modes.
set mouse=a

" Show the filename in the window titlebar.
set title

" No banner. 
let g:netrw_banner = 0

" List files in tree style.
let g:netrw_liststyle = 3

" Open files in last window. 
let g:netrw_browse_split = 4

let g:netrw_altv = 1

" Set window size of file explorer. 
let g:netrw_winsize = 20

" Map Tab to open explorer window. 
noremap <Tab> :Lexplore <CR>

syntax on 

if has("autocmd")
" Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
	autocmd FileType php set omnifunc=phpcomplete#CompletePHP
endif

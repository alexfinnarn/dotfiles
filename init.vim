set nocompatible

" ::::::::: vim-plug ::::::::::::::::::::::

call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-sensible'

Plug 'https://git.drupal.org/project/vimrc.git', { 'branch': '7.x-1.x', 'rtp': 'bundle/vim-plugin-for-drupal' }

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'joonty/vdebug'

"Plug 'autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins'}
"Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

Plug 'roxma/nvim-completion-manager'

call plug#end()

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ }


"""""""""""""""""""""""""" Key remappings.
""""""""""""""""""""""
noremap <Tab> :NERDTreeToggle <CR>
noremap <c-p> :FZF <CR>

" LanguageClient-neovim
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


let NERDTreeShowHidden=1

" Enhance command-line completion.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar,*.gz,*/libraries/*,*/vendor/*
set wildmenu

" Add the g flag to search/replace by default.
set gdefault

" Enable line numbers.
set number

" Enable syntax highlighting.
syntax on

" Make window splits more natural.
set splitbelow
set splitright

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

" Use copy/paste.
set clipboard^=unnamed,unnamedplus

" Show the filename in the window titlebar.
set title

" Netrw config.
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20


if has("autocmd")

  " Close Vim if Nerdtree is the only thing open. 
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END

  autocmd FileType php LanguageClientStart
  "autocmd FileType php set omnifunc=phpcomplete#CompletePHP

endif

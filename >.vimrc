" Maintainer: Sean Kelleher

" General {{{1

"" Leader {{{2
let mapleader = "\<space>"

"" Automatic saving and restoring of folds {{{2
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Navigation {{{1

"" Traverse buffers {{{2
nnoremap <Right> :bn<CR>
nnoremap <Left> :bp<CR>

"" Traverse windows {{{2
nnoremap <S-Up> <C-W><Up>
nnoremap <S-Right> <C-W><Right>
nnoremap <S-Left> <C-W><Left>
nnoremap <S-Down> <C-W><Down>

"" Close buffer {{{2
nnoremap <Down> :bp<bar>sp<bar>bn<bar>bd<CR>

" General settings {{{1

"" Colours {{{2
syntax on
set background=dark

"" Default options {{{2
set autoindent
set expandtab
set hlsearch
set ignorecase
set incsearch
set nocompatible
set noerrorbells
set nohidden
set novisualbell
set ruler
set showcmd
set smartcase
set smartindent
set spell

"" Default values {{{2
""
"" `listchars` value adapted from
""
""     https://gist.github.com/adinapoli/4723877
set colorcolumn=80
set laststatus=2
set listchars=tab:\ ▸,eol:¬,trail:·
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=80

" Language specific settings {{{1
"
" Use `setlocal filetype` instead of `setfiletype`, as the latter doesn't update
" the filetype if it was already set.

"" Go {{{2
autocmd BufNewFile,BufRead *.go setlocal noexpandtab
autocmd BufNewFile,BufRead *.go setlocal shiftwidth=8
autocmd BufNewFile,BufRead *.go setlocal softtabstop=8
autocmd BufNewFile,BufRead *.go setlocal tabstop=8

"" Python {{{2
autocmd BufNewFile,BufRead *.py setlocal colorcolumn=79
autocmd BufNewFile,BufRead *.py setlocal foldmethod=indent

"" Markdown {{{2
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

" Key mappings {{{1

inoremap jk <Esc>

"" Clear highlighting and message on refresh.
nnoremap <C-L> :let @/ = ""<CR>:echo<CR><C-L>

" vim: set foldmethod=marker

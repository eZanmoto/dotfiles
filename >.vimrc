" Maintainer: Sean Kelleher

" General {{{1

"" Leader {{{2
let mapleader = "\<space>"

" Navigation {{{1

"" Traverse buffers {{{2
" nnoremap <Right> :bn<CR>
" nnoremap <Left> :bp<CR>
nnoremap <Right> :bn<CR>
nnoremap <Left> :bp<CR>

"" Traverse windows {{{2
nnoremap <Leader>k <C-W><Up>
nnoremap <Leader>l <C-W><Right>
nnoremap <Leader>h <C-W><Left>
nnoremap <Leader>j <C-W><Down>
nnoremap <Leader>n <C-W><C-W>
nnoremap <Leader>M <C-W>\|<C-W>_0
nnoremap <Leader>H <C-W>_
nnoremap <Leader>m <C-W>=0
nnoremap <Leader>w :w<CR>

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
set nojoinspaces
set nohidden
" We disable `modeline` to avoid security issues (see
" <https://security.stackexchange.com/a/157739> for an incomplete list).
set nomodeline
set nospell
set novisualbell
set nowrap
set ruler
set showcmd
set smartcase
set smartindent
set splitbelow
set splitright

"" Default values {{{2
set colorcolumn=80
"" We set the encoding of this file to UTF-8 so that the UTF-8-encoded value of
"" `listchars` can be read properly. It also prevents an error concerning the
"" failure to read this value from being output.
set encoding=utf-8
set laststatus=2
"" `listchars` value adapted from
""
""     https://gist.github.com/adinapoli/4723877
set listchars=tab:\ ▸,eol:¬,trail:·
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=80

" Language specific settings {{{1
"
" Use `setlocal filetype` instead of `setfiletype`, as the latter doesn't update
" the filetype if it was already set.

"" Javascript {{{2
autocmd BufNewFile,BufRead *.js setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.js setlocal nospell
autocmd BufNewFile,BufRead *.js setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.js setlocal softtabstop=2
autocmd BufNewFile,BufRead *.js setlocal tabstop=2
autocmd BufNewFile,BufRead *.js setlocal textwidth=80

"" Vue {{{2
autocmd BufNewFile,BufRead *.vue setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.vue setlocal filetype=html
autocmd BufNewFile,BufRead *.vue setlocal nospell
autocmd BufNewFile,BufRead *.vue setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.vue setlocal softtabstop=2
autocmd BufNewFile,BufRead *.vue setlocal tabstop=2
autocmd BufNewFile,BufRead *.vue setlocal textwidth=80

"" Typescript {{{2
autocmd BufNewFile,BufRead *.ts setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.ts setlocal filetype=javascript
autocmd BufNewFile,BufRead *.ts setlocal nospell
autocmd BufNewFile,BufRead *.ts setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.ts setlocal softtabstop=2
autocmd BufNewFile,BufRead *.ts setlocal tabstop=2
autocmd BufNewFile,BufRead *.ts setlocal textwidth=80

"" Go {{{2
autocmd BufNewFile,BufRead *.go setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.go setlocal noexpandtab
autocmd BufNewFile,BufRead *.go setlocal nospell
autocmd BufNewFile,BufRead *.go setlocal shiftwidth=8
autocmd BufNewFile,BufRead *.go setlocal softtabstop=8
autocmd BufNewFile,BufRead *.go setlocal tabstop=8
autocmd BufNewFile,BufRead *.go setlocal textwidth=80

autocmd BufNewFile,BufRead *.gotempl setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.gotempl setlocal noexpandtab
autocmd BufNewFile,BufRead *.gotempl setlocal nospell
autocmd BufNewFile,BufRead *.gotempl setlocal shiftwidth=8
autocmd BufNewFile,BufRead *.gotempl setlocal softtabstop=8
autocmd BufNewFile,BufRead *.gotempl setlocal tabstop=8
autocmd BufNewFile,BufRead *.gotempl setlocal textwidth=80

"" Rust {{{2
autocmd BufNewFile,BufRead *.rs setlocal colorcolumn=79
autocmd BufNewFile,BufRead *.rs setlocal list
autocmd BufNewFile,BufRead *.rs setlocal textwidth=79

"" Markdown {{{2
autocmd BufNewFile,BufRead *.md setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
autocmd BufNewFile,BufRead *.md setlocal spell
autocmd BufNewFile,BufRead *.md setlocal textwidth=80

"" LALRPOP {{{2
autocmd BufNewFile,BufRead *.lalrpop setlocal syntax=rust

"" HTML {{{2
autocmd BufNewFile,BufRead *.html setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.html setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.html setlocal softtabstop=2
autocmd BufNewFile,BufRead *.html setlocal tabstop=2
autocmd BufNewFile,BufRead *.html setlocal textwidth=80

"" Less {{{2
autocmd BufNewFile,BufRead *.less setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.less setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.less setlocal softtabstop=2
autocmd BufNewFile,BufRead *.less setlocal syntax=css
autocmd BufNewFile,BufRead *.less setlocal tabstop=2
autocmd BufNewFile,BufRead *.less setlocal textwidth=80

"" Python {{{2
autocmd BufNewFile,BufRead *.py setlocal colorcolumn=79
autocmd BufNewFile,BufRead *.py setlocal foldmethod=indent
autocmd BufNewFile,BufRead *.py setlocal spell
autocmd BufNewFile,BufRead *.py setlocal textwidth=79

"" YAML {{{2
autocmd BufNewFile,BufRead *.yaml setlocal foldmethod=indent
autocmd BufNewFile,BufRead *.yaml setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.yaml setlocal softtabstop=2
autocmd BufNewFile,BufRead *.yaml setlocal tabstop=2
autocmd BufNewFile,BufRead *.yaml setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.yaml setlocal textwidth=80

"" .vimrc {{{2
autocmd BufNewFile,BufRead .vimrc setlocal foldmethod=marker
autocmd BufNewFile,BufRead .vimrc setlocal spell

"" Makefile {{{2
autocmd BufNewFile,BufRead Makefile setlocal list
autocmd BufNewFile,BufRead Makefile setlocal noexpandtab

"" Justfile {{{2
autocmd BufNewFile,BufRead Justfile setlocal syntax=make

"" Terraform {{{2
autocmd BufNewFile,BufRead *.tf setlocal colorcolumn=80
autocmd BufNewFile,BufRead *.tf setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.tf setlocal softtabstop=2
autocmd BufNewFile,BufRead *.tf setlocal spell
autocmd BufNewFile,BufRead *.tf setlocal tabstop=2
autocmd BufNewFile,BufRead *.tf setlocal textwidth=80

" Key mappings {{{1

inoremap jk <Esc>

"" Clear highlighting and message on refresh. {{{2
nnoremap <C-L> :let @/ = ""<CR>:echo<CR><C-L>

"" NERDTree shortcuts. {{{2
nnoremap <C-H> :NERDTreeToggle<CR>

execute pathogen#infect()

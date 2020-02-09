set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'vim-latex/vim-latex'
"Plugin 'jalvesaq/Nvim-R'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set ai       " turn on automatic indentation
set ts=2     " set tabs to be 2 characters wide
set et       " replace tabs with spaces (2 spaces since ts=2)
set showmode " puts insert message at bottom on screen when inserting
set ruler         " show the cursor position all the time
set number
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set fo+=r
" when editing a makefile, use actual tabs
autocmd FileType make set noexpandtab|set autoindent

" redefine ^J ^H ^K ^L to move between windows (used w/split screens)
nn  k
nn  h
nn  l
nn <C-J> j

" define F2 to insert 
"   #include <iostream>
"   using namespace std;
"
"   int main()
"   {
"     X starts in insert mode here
"
"     return 0;
"   }
map #2 i#include <iostream>using namespace std;int main(){  return 0;xxi}kkki	

" define F3 to insert ruby shebang
map #3 i#!/usr/bin/env ruby

" turn on color syntax highlighting
syntax on


" turn on syntax highligting for .gpl files (CSCI 515 project)
au BufRead,BufNewFile *.gpl set filetype=gpl

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set t_Co=256

" Use , with vim-R to send lines
nmap , <Plug>RDSendLine
nmap <C-,> <Plug>RSendFile
" Disable _ autocomplete to <-
let R_assign = 0

" Have vim=latex compile to pdf
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'

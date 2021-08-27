set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-latex/vim-latex'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call plug#end()
" To ignore plugin indent changes, instead use:



set ai       " turn on automatic indentation
set ts=4     " set tabs to be 2 characters wide
set et       " replace tabs with spaces (2 spaces since ts=2)
set showmode " puts insert message at bottom on screen when inserting
set ruler         " show the cursor position all the time
set number
set shiftwidth=4
set fo+=r
"set nowrap
set incsearch
set nohlsearch

"Git Gutter Things
"set signcolumn=yes
set updatetime=100
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=3
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'

syntax on

" when editing a makefile, use actual tabs
autocmd FileType make set noexpandtab|set autoindent

let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" turn on syntax highligting for .gpl files (CSCI 515 project)
au BufRead,BufNewFile *.gpl set filetype=gpl

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set t_Co=256

" Have vim=latex compile to pdf
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'

" Nerd Tree Stuff
map <C-n> :NERDTreeToggle<CR>

"YouCompleteMe
set completeopt-=preview
let g:netrw_banner = 0
let g:ycm_auto_hover=''

highlight YcmErrorSection ctermbg=231 ctermfg=16
highlight YcmWarningSection ctermbg=231 ctermfg=16



" redefine ^J ^H ^K ^L to move between windows (used w/split screens)
nn  k
nn  h
nn  l
nn <C-J> j
" turn on color syntax highlighting

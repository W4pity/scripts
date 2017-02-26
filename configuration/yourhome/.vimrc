set encoding=utf-8 fileencodings=
syntax on
set rnu
set shiftwidth=2
set softtabstop=2
set showcmd
set textwidth=80
set number
set autoindent
set expandtab
set smarttab
execute "set colorcolumn=" . join(range(81,335), ',')
highlight endline ctermbg=red
match endline /\s\+$/ 
set nocompatible  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe' 
call vundle#end() 
highlight Search cterm=underline ctermbg=yellow

colorscheme kolor
let g:kolor_italic=1
let g:kolor_bold=1  
let g:kolor_underlined=0
let g:kolor_alternative_matchparen=0

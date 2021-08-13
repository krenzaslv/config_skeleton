set secure
set exrc

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.local/share/nvim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'skywind3000/asyncrun.vim'
call vundle#end()            " required

filetype plugin indent on    " required
let g:onedark_terminal_italics=1
let g:onedark_termcolors=1
let g:airline_theme='onedark'
syntax on
set termguicolors
colorscheme onedark 

set number

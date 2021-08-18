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
	Plugin 'rakr/vim-one'
	Plugin 'sheerun/vim-polyglot'
	Plugin 'ycm-core/YouCompleteMe'
	Plugin 'skywind3000/asyncrun.vim'
	Plugin 'cdelledonne/vim-cmake'
	Plugin 'dense-analysis/ale'
call vundle#end()            " required

filetype plugin indent on    " required

let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

set termguicolors
colorscheme one 
set background=dark

syntax on
set number

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
	Plugin 'cjrh/vim-conda'
call vundle#end()            " required

filetype plugin indent on    " required

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

set termguicolors
colorscheme one 
set background=dark

let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {'python': ['autoflake', 'black']}
let g:ale_fix_on_save = 1

syntax on
set number

map <C-c> : YcmCompleter Format<CR>
map <C-u> : YcmCompleter GoToReferences<CR>
map <C-g> : YcmCompleter GoTo  <CR>
map <C-f> <Plug>(YCMFindSymbolInWorkspace)
map <C-d> <Plug>(YCMFindSymbolInDocument)
map <F7> :Step <CR>               
map <F8> :Over<CR>               
map <F9> :Continue <CR>               
packadd termdebug

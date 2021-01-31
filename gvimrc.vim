"Vim-Plug"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'
call plug#end()

"Vim settings"
au GUIEnter * simalt ~x
colorscheme molokai
let g:molokai_original = 1
set hidden
set cursorline
set bg=dark
set nocompatible 
set belloff=all
set guioptions-=T
set guifont=Cascadia_Mono_PL:h14:cANSI:qDRAFT
set encoding=UTF-8
set noswapfile
set nobackup
set ruler
syntax on 
set nu rnu
set autochdir 
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set rnu
	autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
set showcmd
set smartcase
set nowrap
set formatoptions-=T
set incsearch
set nohlsearch
filetype plugin indent on
set noexpandtab				
set smartindent			
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

"Keybindings"
let mapleader=" "
inoremap jj <ESC>
inoremap {<CR> {<CR>}<ESC><S-o>
nnoremap <Leader>cp :-1read ~/Desktop/Snippets/cp.cpp<CR> :6<CR>o
nnoremap <Leader>p "+p<CR>
nnoremap <Leader>y :%y+<CR>

"Compiling and executing source files"
autocmd filetype cpp nnoremap <silent> <Leader>r :w <bar> !g++ -pipe -Wall -Wextra -Wshadow -Werror -O2 -std=c++17 % -lm -o a && a<CR>
autocmd filetype c nnoremap <silent> <Leader>r :w <bar> !gcc -pipe -Wall -O2 -std=c11  % -lm -o a && a<CR>
autocmd filetype python nnoremap <silent> <Leader>r :w <bar> !python %<CR>

"Plugins Config"
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

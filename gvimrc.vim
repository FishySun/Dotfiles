"GVimrc"
"Author: Prasun Biswas @ FishySun"
" ______                           ______
" | ___ \                          | ___ (_)                      
" | |_/ / __ __ _ ___ _   _ _ __   | |_/ /_ _____      ____ _ ___ 
" |  __/ '__/ _` / __| | | | '_ \  | ___ \ / __\ \ /\ / / _` / __|
" | |  | | | (_| \__ \ |_| | | | | | |_/ / \__ \\ V  V / (_| \__ \
" \_|  |_|  \__,_|___/\__,_|_| |_| \____/|_|___/ \_/\_/ \__,_|___/


"Vim-Plug"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar'
Plug 'luochen1990/rainbow'
call plug#end()

"Vim settings"
au GUIEnter * simalt ~x
set hidden
set bg=dark
colorscheme onedark
set nocompatible 
set belloff=all
set guioptions-=T
set guifont=Consolas:h18:cANSI:qDRAFT
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
filetype on
filetype plugin on
filetype plugin indent on
set smartindent			
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

"Keybindings"
let mapleader=" "
nnoremap <Leader>cp :-1read ~/Desktop/Snippets/cp.cpp<CR> :6<CR>o
nnoremap <Leader>p "+p<CR>
nnoremap <Leader>y :%y+<CR>
map <silent> <C-o> :NERDTreeToggle<CR>
nmap <silent> <F8> :TagbarOpenAutoClose<CR>
nnoremap <silent> <Leader>y :%y+<CR>
nnoremap <Leader>h <C-w><C-h>
nnoremap <Leader>j <C-w><C-j>
nnoremap <Leader>k <C-w><C-k>
nnoremap <Leader>l <C-w><C-l>
nnoremap <Leader>s :vsplit<CR>
nnoremap <Leader>= <C-w>=
nnoremap <Leader>m <C-W>_<C-W><Bar> 
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR> 
inoremap jj <ESC>
inoremap {<CR> {<CR>}<ESC>ko

"Compiling and executing source files"
autocmd filetype cpp nnoremap <silent> <Leader>r :w <bar> !g++ -pipe -Wall -Wextra -Wshadow -Werror -O2 -std=c++17 % -lm -o a && a<CR>
autocmd filetype c nnoremap <silent> <Leader>r :w <bar> !gcc -pipe -Wall -O2 -std=c11  % -lm -o a && a<CR>
autocmd filetype python nnoremap <silent> <Leader>r :w <bar> !python %<CR>

"Plugins Config"
let python_highlight_all=1
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let NERDTreeQuitOnOpen=1
let g:rainbow_active = 1

"Author: Prasun Biswas @ FishySun"
"For GVim for Windows"
"------------------------------"

" VIM Plugs"
call plug#begin('~/local/share/nvim/plugged')
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'
call plug#end()
" End of Plugs declarations "

au GUIEnter * simalt ~x		"Always enter as fullscreen in GVim"
:set guioptions-=T		"No gui menus"	
:set gfn=Jetbrains_Mono_Medium:h13:W500:cANSI:qDRAFT 
:set belloff=all		"Stop any alert bells"
:set noswapfile			"No annoying swaps" 
:set nobackup			"No backups"
:set showcmd
:set ruler
:syntax on
:set nocompatible		"NO compatibility issues"
:set nu rnu			"Display relative as well as absolute line numbers"
:set autochdir			"Make the Present working directory to the directory of the current buffer"
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
:set smartcase
:set nowrap
:set formatoptions-=T
:set incsearch
:filetype plugin indent on

:map <silent> <C-o> :NERDTreeToggle<CR>
:nnoremap <silent> <space> :TagbarToggle<CR>
:nnoremap <S-y> :%y+<CR>	
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>
:inoremap aa <Right>
:inoremap hh <Left>
:inoremap jj <ESC>		"Return to normal mode"

"Coding standards" 
set noexpandtab				
set smartindent			
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

"Plugins configurations"
let g:rainbow_active = 1
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1

"For compiling, running and saving a file from Vim for C++, C, Python"
autocmd filetype cpp nnoremap <silent> <C-c> :w <bar> !g++ -pipe -Wall -O2 -std=c++17 % -lm -o a && a<CR>
 
autocmd filetype c nnoremap <silent> <C-c> :w <bar> !gcc -pipe -Wall -O2 -std=c11  % -lm -o a && a<CR>

autocmd filetype python nnoremap <silent> <C-c> :w <bar> !python %<CR>

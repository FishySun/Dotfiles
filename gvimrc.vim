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
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()
" End of Plugs declarations "

"General Configs"
au GUIEnter * simalt ~x		
:set guioptions-=T			
:set encoding=UTF-8
:set gfn=mononoki_NF:cANSI:qDRAFT:h16
:set bg=dark
:colorscheme palenight
:set belloff=all		
:set noswapfile			 
:set nobackup			:set showcmd
:set ruler
:syntax on
:set nocompatible		
:set nu rnu			
:set autochdir			
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

"Custom Keybindings"
:map <silent> <C-o> :NERDTreeToggle<CR>
:nnoremap <silent> <space> :TagbarToggle<CR>
:nnoremap <S-y> :%y+<CR>	
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>
:inoremap aa <Right>
:inoremap hh <Left>
:inoremap jj <ESC>		

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
let g:palenight_terminal_italics=1
let g:airline_theme="palenight"

"For compiling, running and saving a file from Vim for C++, C, Python"
autocmd filetype cpp nnoremap <silent> <C-c> :w <bar> !g++ -pipe -Wall -O2 -std=c++17 % -lm -o a && a<CR>
 
autocmd filetype c nnoremap <silent> <C-c> :w <bar> !gcc -pipe -Wall -O2 -std=c11  % -lm -o a && a<CR>

autocmd filetype python nnoremap <silent> <C-c> :w <bar> !python %<CR>

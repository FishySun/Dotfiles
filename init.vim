"init.vim for NeoVim"
"Author: Prasun Biswas @ FishySun"
" ______                           ______
" | ___ \                          | ___ (_)                      
" | |_/ / __ __ _ ___ _   _ _ __   | |_/ /_ _____      ____ _ ___ 
" |  __/ '__/ _` / __| | | | '_ \  | ___ \ / __\ \ /\ / / _` / __|
" | |  | | | (_| \__ \ |_| | | | | | |_/ / \__ \\ V  V / (_| \__ \
" \_|  |_|  \__,_|___/\__,_|_| |_| \____/|_|___/ \_/\_/ \__,_|___/


" VIM Plugs"
call plug#begin('~/local/share/nvim/plugged')
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tmsvg/pear-tree'
call plug#end()
" End of Plugs declarations "

:set gfn=mononoki_Nerd_Font:Regular:h13 "Change it to whatever font suitable for the user"
:set belloff=all		"Stop any alert bells"
:set noswapfile			"No annoying swaps" 
:set nobackup			"No backups"
:set showcmd
:set t_Co=25
:set bg=dark
:colorscheme palenight
:set ruler
:syntax on
:set nocompatible		"NO compatibility issues"
:set nu rnu				"Display relative as well as absolute line numbers"
:set autochdir			"Make the Present working directory to the directory of the current buffer"
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
:set smartcase
:set nowrap
:set incsearch
:filetype plugin indent on

:map <silent> <C-o> :NERDTreeToggle<CR>
:nnoremap <silent> <space> :TagbarToggle<CR>
:nnoremap <S-y> :%y+<CR>	"Copy current buffer"
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>
:inoremap aa <Right>
:inoremap hh <Left>
:inoremap jj <ESC>			"Return to normal mode"

"Coding standards => Only TABS baby, only weirdos use spaces"
set noexpandtab				
set smartindent			
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

let g:rainbow_active = 1
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
let g:airline_theme = 'palenight'

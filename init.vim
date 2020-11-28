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
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jremmen/vim-ripgrep'
Plug 'kien/ctrlp.vim'
Plug 'tmsvg/pear-tree'
Plug 'scrooloose/nerdcommenter'
call plug#end()
" End of Plugs declarations "

"Vim options"
set noshowmode
set showcmd
set belloff=all	
set noswapfile	
set nobackup
set t_Co=256
set bg=dark
colorscheme palenight
set ruler
syntax on
set nocompatible	
set nu rnu		
set autochdir
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
set smartcase
set nowrap
set incsearch
filetype plugin indent on

"Keybindings"
let mapleader = " "
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
nnoremap <Leader>-	:vertical resize -5<CR> nnoremap <Leader>ps :Rg<SPACE>
inoremap aa <Right>
inoremap hh <Left>
inoremap jj <ESC>	
map <silent> <Leader>f :CtrlP ~<CR>

"Coding standards"
set encoding=utf-8
set noexpandtab				
set smartindent			
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

"Plugin configs"
let NERDTreeQuitOnOpen=1
let g:rainbow_active = 1
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
let g:airline_theme = 'palenight'
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
let g:airline_powerline_fonts = 1
if executable('rg')
	let g:rg_derive_root='true'
endif
let ctrlp_use_caching = 0
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

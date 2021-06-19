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
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'romgrk/doom-one.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mhinz/vim-startify'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()
" End of Plugs declarations "

"Vim options"
set noshowmode
set belloff=all	
set noswapfile	
set nobackup
set cursorline
set autochdir
colorscheme doom-one
set bg=dark
set t_Co=256
set termguicolors
set ruler
set nu rnu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
set hidden
set smartcase
set nohlsearch
set nowrap
set incsearch

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
nnoremap <Leader>-	:vertical resize -5<CR> 
nnoremap <Leader>f	:Files ../<CR>
nnoremap <Leader>ps :RG <CR>
nnoremap <Leader>cp :-1read ~/Documents/Snippets/template.cpp<CR>:9<CR>o
nnoremap <Leader>c :-1read ~/Documents/Snippets/template.c<CR>:3<CR>o
inoremap jj <ESC>
inoremap {<CR> {<CR>}<ESC>ko

"Coding standards"
set encoding=utf-8
set fileformat=unix
set expandtab	
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set smartindent
set autoindent
filetype on
filetype plugin on
filetype plugin indent on

"PEP-8 style code"
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=80
let python_highlight_all=1
syntax on

"Plugin configs"
let NERDTreeQuitOnOpen=1
let g:rainbow_active = 1
let g:airline_theme ='onehalfdark'
let g:airline#extensions#tabline#enabled = 1           
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0 
let g:airline_powerline_fonts = 1
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:fzf_layout = { 'down':  '25%'}
let g:fzf_preview_window = []
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" For running C, Cpp programs from inside Vim"
function! Run(command) abort
	exec '-tabnew | term ' . a:command
	exec 'startinsert'
endfunction

autocmd Filetype cpp nnoremap <Leader>r :w <bar> !g++ -std=c++17 -g -O2 -Wall -Werror -Wshadow -lm -pipe -Wno-unused-result % -o a<CR>:call Run('./a')<CR>
autocmd Filetype c nnoremap <Leader>r :w <bar> !gcc -std=c99 -g -O2 -Wall -Werror -pedantic -pipe -lm -Wno-unused-result % -o a<CR>:call Run('./a')<CR>


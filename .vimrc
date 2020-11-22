syntax on
let mapleader=" "

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set clipboard=unnamedplus
 
"adapt for alacritty(vim's theme can not diaplay in alacritty)
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"
if &term == "alacritty"        
	  let &term = "xterm-256color"
endif

set number
set relativenumber
set hlsearch
set incsearch
set cursorline
set ignorecase
set scrolloff=5


noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>cw
noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER>rc :e $MYVIMRC<CR>
noremap <LEADER>p "+p
noremap <LEADER>y "+y

" direction key map
noremap J 5j
noremap K 5k

noremap = nzz
noremap - Nzz

map s<right> :set splitright<CR>:vsplit<CR>
map s<left> :set nosplitright<CR>:vsplit<CR>
map s<up>   :set nosplitbelow<CR>:split<CR>
map s<down> :set splitbelow<CR>:split<CR>
map <up>    :res +5<CR>
map <down>  :res -5<CR>
map <left>  :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map tu :tabe<CR>
map tn :+tabnext<CR>
map ti :-tabnext<CR>

noremap s <nop>

noremap W :w<CR>
noremap Q :q<CR>
noremap R :source $MYVIMRC<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'mbbill/undotree'
" Initialize plugin system
call plug#end()

color snazzy
let g:SnazzyTransparent = 1


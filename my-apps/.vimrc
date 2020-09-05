call plug#begin('/home/juan/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'
call plug#end()

source $VIMRUNTIME/defaults.vim
let g:powerline_pycmd="py3"
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup


set laststatus=2
set showtabline=2
set noshowmode
set t_Co=256
" Line numbers and colors
set relativenumber
highlight LineNr ctermfg=grey
" Heredar indentación de líneas anteriores
set autoindent
" Tabs son 8 espacios
set expandtab
set tabstop=8

" tabs para los makefile
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" no bell
set noerrorbells
map <C-n> :NERDTreeToggle<CR>

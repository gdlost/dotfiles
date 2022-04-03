" General config {{{1
if has('gui')
	set guifont=Liberation\ Mono\ 12
endif

colorscheme desert

syntax on
set number
set norelativenumber
set showcmd
set ruler

set autoindent
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set noerrorbells
set foldmethod=marker
set modeline
set modelines=5
set backspace=indent,eol,start

set wildmenu

" Si se intenta abrir un archivo con la flag '-M' de vim
" entonces, se evita el mensaje de error
" Por cierto, yo solo trabajo con archivos con LF=unix '\n'
if &modifiable
	set ff=unix
endif
set nowrap

"set cinoptions=l1
set tags+=~/.vim/systags

"}}}

nnoremap <space> <nop>
let mapleader="\<Space>"

nnoremap <leader>n gt
nnoremap <leader>b gT
nnoremap <leader>u gUiw
nnoremap <leader>l guiw

" }}}

" functions
function CAddIncludeGuards()
	let l:filename = toupper(fnamemodify(expand('%t'), ":r"))
	call append(0, "#ifndef " . l:filename . "_H")
	call append(1, "#define " . l:filename . "_H")
	call append(2, "")
	call append(3, "/* protos and macros goes here */")
	call append(4, "")
	call append(5, "#endif /* " . l:filename . "_H */")
endfunction

" autocmd {{{1
autocmd FileType make setlocal noexpandtab shiftwidth=9 softtabstop=8
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType html setlocal tabstop=2 softtabstop=2
autocmd FileType python setlocal tabstop=4 softtabstop=4

augroup programmingC
	autocmd BufNewFile *.h call CAddIncludeGuards()
augroup END

" }}}

" Pathogen
execute pathogen#infect()

" NerdTree
" autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Uncomment the following to have Vim jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Airline Line
let g:airline_powerline_fonts = 1
set laststatus=2 " always show the statusline
set encoding=utf-8 " necessary to show unicode glyphs
set noshowmode " hide the default mode text

"Theming
syntax enable
" set showmode " show what mode we're in
set number	" turn on line numbers
set scrolloff=5 " always have some lines of text when scrolling
set showmatch	" show matching braces and brackets
set hlsearch	" highlight search results
set incsearch	" show the first matching result while searching for results
set history=0	" disable our search history
set visualbell " don't beep
set noerrorbells " don't beep
set background=dark

" set cakephp's template extension
au BufNewFile,BufRead *.ctp set filetype=php

set foldmethod=indent "zo to open, zc to close
set foldlevel=99

" Intellisense!
autocmd FileType * set autoindent copyindent smarttab noexpandtab tabstop=3 shiftwidth=3
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cucumber set expandtab tabstop=2 shiftwidth=2 softtabstop=0
autocmd FileType ruby set expandtab tabstop=2 shiftwidth=2 softtabstop=0
setlocal omnifunc=syntaxcomplete#Complete

" Remove all trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" Godef
let g:godef_split=0

" Tab Completion
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Disable concealing
let g:vim_json_syntax_conceal = 0

" Set mouse enabled as default
set mouse=a
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
end

" Set key to toggle mouse usage
nnoremap <F12> :call ToggleMouse()<CR>
function! ToggleMouse()
	if &mouse == 'a'
		set mouse=
		set ttymouse=
		echo "Mouse usage disabled"
	else
		set mouse=a
		set ttymouse=xterm2
		echo "Mouse usage enabled"
	endif
endfunction

set backupdir=~/.vim/backup// " set a specific dir for backups to keep them out of the working dir
set directory=~/.vim/swap// " set a specific dir for swap files to keep them out of the working dir

" Shortcut keys
" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Conflicts with plugins, needs to be fixed
" inoremap <c-space> <c-n>
" nmap <silent> <C-n> :tabnext<CR>
" nmap <silent> <C-p> :tabprev<CR>
" imap <silent> <C-n> <esc><C-n>
" imap <silent> <C-p> <esc><C-p>

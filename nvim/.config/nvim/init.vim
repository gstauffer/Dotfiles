set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" start vim-plug
call plug#begin()

	" Lightline statusbar/tabline
	Plug 'itchyny/lightline.vim'

	" NerdTree file manager
	Plug 'scrooloose/nerdTree'


call plug#end()

" Key mappings
nmap <C-n> :NERDTreeToggle<CR>
nnoremap <C-a> <C-w>

" Mouse scroll support
set mouse=a

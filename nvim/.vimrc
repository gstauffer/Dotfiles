" utf-8 encoding
set encoding=utf-8

" Automatically install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start vim-plug
call plug#begin()
	" Lightline statusbar/tabline
	Plug 'itchyny/lightline.vim'
	" ALE asynchronous linting engine
	Plug 'dense-analysis/ale'
	" NerdTree file manager
	Plug 'scrooloose/nerdTree'
	" Git gutter status
	Plug 'airblade/vim-gitgutter'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Key mappings
nmap <C-n> :NERDTreeToggle<CR>
nnoremap <C-a> <C-w>

" Mouse scroll support
set mouse=a

" Tab and shift widths set at 4 spaces
set tabstop=4
set shiftwidth=4

" Line numbers, search case settings, indents 
set number
set ignorecase
set smartcase
set autoindent
set smartindent

" Show hidden files in NerdTree
let NERDTreeShowHidden=1

" Set `w!!` to save as root
cmap w!! w !sudo tee > /dev/null %

" Set YAML spacing (credits to https://stackoverflow.com/a/37488992/8673439)
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

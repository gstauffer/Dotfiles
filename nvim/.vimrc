" Tab and shift widths set at 4 spaces
set tabstop=4
set shiftwidth=4

" Line numbers
set number

" Show hidden files in NerdTree
let NERDTreeShowHidden=1

" Set `w!!` to save as root
cmap w!! w !sudo tee > /dev/null %

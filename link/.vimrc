runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

syntax enable
set background=dark
colorscheme solarized

set number
set cindent
set tabstop=4
set shiftwidth=4
set cc=80
set cursorline

nnoremap <A-j> :m .+1
nnoremap <A-k> :m .-2
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

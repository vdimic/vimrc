set number
set tabstop=4
set shiftwidth=4
set hidden
syntax on

set t_Co=256
"colorscheme my_delek
colorscheme summerfruit256
colorscheme PaperColor

set cursorline
"set cursorcolumn

"set mouse=a
set clipboard=unnamedplus
execute pathogen#infect()

autocmd BufEnter *.tex setlocal spelllang=en_gb spell

let g:Tex_GotoError=0

set laststatus=2
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

inoremap <C-b> <esc>:w<CR>:make<CR>
noremap <C-b> :w<CR>:make<CR>

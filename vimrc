set number
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
autocmd FileType make setlocal noexpandtab
set hidden
syntax on

set encoding=utf-8

set t_Co=256
"colorscheme my_delek
"colorscheme summerfruit256
colorscheme PaperColor
"colorscheme sprinkles

set cursorline
"set cursorcolumn

" Hightlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"set mouse=a
set clipboard=unnamedplus
execute pathogen#infect()

autocmd BufEnter *.tex setlocal spelllang=en_us spell

let g:Tex_GotoError=0

set laststatus=2
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


inoremap <C-b> <esc>:w<CR>:make<CR>
noremap <C-b> :w<CR>:make<CR>

"clang_complete
let g:clang_library_path='/usr/lib64/libclang.so.3.8'

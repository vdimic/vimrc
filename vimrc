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

"set mouse=a
set clipboard=unnamedplus
execute pathogen#infect()

autocmd BufEnter *.tex setlocal spelllang=en_gb spell

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

if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif


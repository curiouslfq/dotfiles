" 去除vi兼容
set nocompatible

" 打开高亮
syntax on

" Color scheme
"colorscheme kolor
set background=dark
"set columns=80
"set ruler

" 显示行号
set number
set noswapfile
set autowrite

" 不将=包括为文件名
set isfname-==

set modeline

set mouse-=a
" Code folding 
set nofoldenable
set foldnestmax=10
set foldlevel=0
"set foldmethod=indent
set foldmethod=syntax
"set foldenable

" 设置缩进为8个空格
set tabstop=8
set noexpandtab

" 文件编码与格式
set fileencodings=utf-8,gb18030,gbk
set fileformats=unix,dos
filetype plugin indent on

autocmd FileType python setlocal expandtab shiftround smartindent autoindent tabstop=8 shiftwidth=4 softtabstop=4
autocmd FileType c setlocal noexpandtab shiftround autoindent cindent tabstop=8

let mapleader = ","
inoremap jj <ESC>
nmap mm :w<CR>:make -j2<CR>

set wrap "自动换行
set wrapmargin=0
set linebreak
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配

"set completeopt-=preview

let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_snippets_engine="clang_complete"
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_library_path="/usr/lib/libclang.so"

" ctags setting
if filereadable("tags")
    set tags+=tags
endif
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"let Tlist_Show_One_File = 1
"let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1
map tt :TlistToggle<cr>
"let Tlist_Sort_Type = 'name'
"let Tlist_Close_On_Select = 1
"let Tlist_Use_Right_Window = 1

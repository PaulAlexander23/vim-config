set nocompatible " not compatible with vi

" *********************** Plugins *********************************************

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'

Plug 'desmap/ale-sensible' | Plug 'dense-analysis/ale'

Plug 'preservim/nerdtree'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

Plug 'rafi/awesome-vim-colorschemes'

Plug 'doums/darcula'

Plug 'sheerun/vim-wombat-scheme'

Plug 'itchyny/lightline.vim'

Plug 'shinchu/lightline-gruvbox.vim'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-sensible'

Plug 'gkapfham/vim-vitamin-onec'

Plug 'sheerun/vim-polyglot'

Plug 'lervag/vimtex'

Plug 'SirVer/ultisnips'

Plug 'dpelle/vim-LanguageTool'

"Plug 'Yggdroot/indentLine'

Plug 'universal-ctags/ctags'

call plug#end()

" *********************** Settings *********************************************

" Spelling and grammer checking
set spelllang=en_gb
filetype plugin on
let g:languagetool_jar='/snap/languagetool/current/usr/bin/languagetool-commandline.jar'
"let g:languagetool_cmd='java -jar /snap/languagetool/current/usr/bin/languagetool-commandline.jar'

" Window split rules
set splitright splitbelow

" Tab controls
set expandtab
set tabstop=4
set shiftwidth=4

" Line numbers
set number relativenumber

" Highlighting
syntax on            " use syntac highlighting
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE
set hls              " highlight search
set cursorline
"set cc=80

" Ensure proper colours
set termguicolors    
set t_Co=256
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
if has('nvim')
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif


" *********************** User commands ***************************************

command Matlab :terminal matlab -nodesktop -nosplash

command Latex :!latexmk -pdf %

command Zathura :!zathura *.pdf &

" *********************** Keyboard mappings ***********************************

let mapleader=" " "set leader to space
"NORMAL MODE
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>f :ALEFix<Enter>

" *********************** Fortran *********************************************

let fortran_free_source=1
let fortran_more_precise=1
let fortran_do_enddo=1

" *********************** Neovim specifics ************************************

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif


" *********************** Colorscheme *****************************************

"" *********************** Gruvbox
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='medium'
colorscheme gruvbox
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \   },
            \ 'component_function':{
            \   'gitbranch': 'FugitiveHead'
            \   },
            \ }

" *********************** Ayu
"let ayucolor="light"
"let ayucolor="mirage"
"let ayucolor="dark"
"colorscheme ayu
"let g:lightline = {
"            \ 'colorscheme': 'ayu',
"            \ 'active': {
"            \   'left': [ [ 'mode', 'paste' ],
"            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"            \   },
"            \ 'component_function':{
"            \   'gitbranch': 'FugitiveHead'
"            \   },
"            \ }

" *********************** One-dark
"colorscheme onedark
"let g:lightline = {
"            \ 'colorscheme': 'onedark',
"            \ 'active': {
"            \   'left': [ [ 'mode', 'paste' ],
"            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"            \   },
"            \ 'component_function':{
"            \   'gitbranch': 'FugitiveHead'
"            \   },
"            \ }

" *********************** Wombat
"colorscheme wombat
"let g:lightline = {
"            \ 'colorscheme': 'wombat',
"            \ 'active': {
"            \   'left': [ [ 'mode', 'paste' ],
"            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"            \   },
"            \ 'component_function':{
"            \   'gitbranch': 'FugitiveHead'
"            \   },
"            \ }

" *********************** Darcula
"colorscheme darcula
"let g:lightline = {
"            \ 'colorscheme': 'darcula',
"            \ 'active': {
"            \   'left': [ [ 'mode', 'paste' ],
"            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"            \   },
"            \ 'component_function':{
"            \   'gitbranch': 'FugitiveHead'
"            \   },
"            \ }

" *********************** Apprentice
"colorscheme apprentice
"let g:lightline = {
"            \ 'colorscheme': 'apprentice',
"            \ 'active': {
"            \   'left': [ [ 'mode', 'paste' ],
"            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"            \   },
"            \ 'component_function':{
"            \   'gitbranch': 'FugitiveHead'
"            \   },
"            \ }


" ************************** Plug Settings **********************************
set noshowmode
let g:indentLine_char = '|'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_first_char = '|'

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:tex_comment_nospell= 1

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

" Run local .vimrc files too if there are any
set exrc
set secure

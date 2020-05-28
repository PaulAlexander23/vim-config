set nocompatible " not compatible with vi

" tab controls
set expandtab
set tabstop=4
set shiftwidth=4

set number relativenumber
set splitright splitbelow

set spelllang=en_gb

" *********************** Keyboard mappings ***********************************

let mapleader=" " "set leader to space
"NORMAL MODE
"map window moves to leader
nmap <leader>w <C-w>
nmap <leader>s :sp<enter>
nmap <leader>v :vsp<enter>
nmap <leader>q :clo<enter>
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l
"INSERT MODE
inoremap fj <Esc>

" *********************** Colorscheme *****************************************

syntax on            " use syntac highlighting

let iterm_profile = $ITERM_PROFILE
if iterm_profile == "Dark"
    set background=dark
else
    set background=light
endif
set termguicolors
colorscheme gruvbox
set hls              " highlight search

" *********************** Neovim specifics ************************************

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

" *********************** Plugins *********************************************

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'

Plug 'dense-analysis/ale'

if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

call plug#end()


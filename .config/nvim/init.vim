"
" Misc {{{
"
set guioptions+=M

set number
set relativenumber
set noshowmode
set showcmd
syntax on
filetype plugin indent on
set scrolloff=5
set nomodeline
set modelines=0
set backspace=indent,eol,start
set splitright
set report=0
set whichwrap+=<,>,h,l,
set cursorline
set fileformats=unix,dos
set conceallevel=2
set colorcolumn=80

let mapleader="\<Space>"
set timeoutlen=2000

set autowrite
set hidden
set showmatch

set mouse=a
" }}}

"
" Indentiation {{{
"
set tabstop=4
set shiftwidth=4
set softtabstop=0
set autoindent
set smartindent
"set expandtab
" }}}

"
" CTRL-Tab is Next window (only in GUI) {{{
"
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w
" }}}

"
" Search {{{
"
set ignorecase
set smartcase
set incsearch
" }}}

"
" Clipboard {{{
"
if has("clipboard")
    vnoremap <C-X> "+x
    vnoremap <C-C> "+y
    inoremap <C-V> <C-R>+
    " cmap <C-V> <C-R>+
endif
" }}}

"
" Long lines as break lines {{{
"
nmap <Down> gj
nmap <Up> gk
vmap <Down> gj
vmap <Up> gk
" }}}

"
" Formating {{{
"
map <leader>q gqip
" set textwidth=78
set linebreak
set list
set listchars=tab:»\ ,trail:·,nbsp:_,extends:↷,precedes:↶
" }}}

"
" Plugins {{{
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'chrisbra/Colorizer'
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
Plug 'tmsvg/pear-tree'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'wellle/targets.vim'
Plug 'haya14busa/is.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'dag/vim-fish'

" Completions
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dkarter/bullets.vim'
Plug 'inkarkat/vim-syntaxrange'
Plug 'aklt/plantuml-syntax'
Plug 'tpope/vim-eunuch'

" v Themes v
Plug 'lifepillar/vim-colortemplate'
Plug 'dracula/vim', { 'as': 'dracula-vim' }
Plug 'npmiller/vreeze'
Plug 'AlessandroYorba/Breve'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'noahfrederick/vim-hemisu'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'nightsense/seabird'
Plug 'nightsense/snow'
Plug 'nightsense/shoji'
Plug 'kaicataldo/material.vim'
Plug 'morhetz/gruvbox'
Plug 'ntk148v/vim-horizon'
Plug 'fneu/breezy'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'arcticicestudio/nord-vim'

call plug#end()
" }}}

" Theme
set background=dark
set termguicolors
let g:material_theme_style = 'lighter'
let g:material_terminal_italics = 1
colorscheme gruvbox
highlight Normal guibg=NONE

" Lightline
source ~/.config/nvim/lightline.vim

" Pear-tree
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
imap <A-CR> <Plug>(PearTreeExpand)

" Startify
source ~/.config/nvim/startify.vim

" NERDTree
let g:NERDTreeChDirMode = 2

" Bullets.vim {{{
let g:bullets_enabled_file_types = [
	\ 'asciidoc',
	\ 'markdown'
	\]

" }}}

" Google Drive
source ~/.config/nvim/gdrive.vim

" Zathura
function! OpenPDF()
	execute 'silent !zathura ' . '"' . expand('%:r') . '.pdf' . '" &'
endfunction
command! OpendPDF call OpenPDF()

let g:plantuml_set_makeprg = 0

source ~/.config/nvim/mappings.vim
source ~/.config/nvim/asciidoc-support.vim

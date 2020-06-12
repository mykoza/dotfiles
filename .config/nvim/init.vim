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
set colorcolumn=80

let mapleader="\<Space>"
set timeoutlen=2000

" set autowrite
set hidden
" set showmatch

set mouse=a

cmap w!! w !sudo tee > /dev/null %
" }}}

"
" Indentiation {{{
"
set tabstop=4
set shiftwidth=4
set softtabstop=0
set autoindent
set smartindent
set expandtab
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
set inccommand=split
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
nnoremap <leader>q gqip
" set textwidth=78
set linebreak
set list
set listchars=tab:»\ ,trail:·,nbsp:_,extends:↷,precedes:↶
" }}}

"
" Plugins {{{
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'chrisbra/Colorizer' " Colors hex codes and names
Plug 'junegunn/vim-easy-align' " Alignment
Plug 'itchyny/lightline.vim'
Plug 'tmsvg/pear-tree' " Automatically pair parenthesis etc.
Plug 'mhinz/vim-startify' " Start screen
Plug 'tpope/vim-surround' " Create, change surroundings
Plug 'tpope/vim-commentary' " Comment lines out
Plug 'tpope/vim-abolish' "add abbrevs, :subsitue on steroids, text case mod.
Plug 'wellle/targets.vim' " Additional text objects
Plug 'haya14busa/is.vim' " Improved incremental search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sirver/ultisnips' " Snippet engine
Plug 'honza/vim-snippets' " Snippet collection
Plug 'scrooloose/nerdtree' " File tree
Plug 'dkarter/bullets.vim' " Auto bullets in text
Plug 'tpope/vim-eunuch' " Shell commands

" Completions
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax
Plug 'dag/vim-fish' " Fish shell syntax
" Plug 'inkarkat/vim-syntaxrange'
" Plug 'aklt/plantuml-syntax'
Plug 'neovimhaskell/haskell-vim'

" v Themes v
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" Theme
let g:gruvbox_italic=1
set background=dark
set termguicolors
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

source ~/.config/nvim/mappings.vim
source ~/.config/nvim/asciidoc-support.vim

augroup ultisnips_no_auto_expansion
	autocmd!
	autocmd VimEnter * au! UltiSnips_AutoTrigger
augroup end

" Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_disable = 1

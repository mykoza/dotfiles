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
set colorcolumn=78

let mapleader="\<Space>"
set timeoutlen=2000

set autowrite
set hidden
set showmatch
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
" CTRL-Tab is Next window (mswin.vim) {{{
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
" Pasting (from mswin.vim) {{{
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

Plug 'ap/vim-css-color'
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
Plug 'dracula/vim', { 'as': 'dracula-vim' }
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
Plug 'shougo/neco-vim'
Plug 'dkarter/bullets.vim', { 'branch': 'asciidoc-support'}
Plug 'inkarkat/vim-syntaxrange'
Plug 'aklt/plantuml-syntax'

call plug#end()
" }}}

set termguicolors
colorscheme dracula

"
" Lightline {{{
"
function! LightlineFileformat()
	return winwidth(0) > 75 ? &fileformat : ''
endfunction

function! LightlineFileencoding()
	return winwidth(0) > 75 ? &fileencoding : ''
endfunction

function! LightLineFiletype()
	return winwidth(0) > 45 ? &filetype : ''
endfunction

let g:lightline = {
	\	'colorscheme': 'dracula',
	\	'component_function': {
	\		'fileformat': 'LightlineFileformat',
	\		'fileencoding': 'LightlineFileencoding',
	\		'filetype': 'LightLineFiletype',
	\	},
	\	'mode_map': {
	\		'n': 'NOR',
	\		'i': 'INS',
	\		'R': 'REP',
	\		'v': 'VIS',
	\		'V': 'V-L',
	\		"\<C-v>": 'V-B',
	\		'c' : 'COM',
	\		's': 'SEL',
	\		'S': 'S-L',
	\		"\<C-s>": 'S-B',
	\		't': 'TER'
	\	}
	\ }
" }}}

"
" Pear-tree {{{
"
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
imap <A-CR> <Plug>(PearTreeExpand)
" }}}

"
" Startify {{{
"
let g:startify_bookmarks = [ {'i': '~/.config/nvim/init.vim'}, {'g': '~/.config/nvim/ginit.vim'}, {'m': '~/gdrive/Magisterka/'} ]
let g:startify_change_to_dir = 1
let g:startify_fortune_use_unicode = 1
let g:startify_custom_header = [
	\ '                                          /$$              ',
	\ '                                         |__/              ',
	\ ' /$$$$$$$   /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ',
	\ '| $$__  $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$',
	\ '| $$  \ $$| $$$$$$$$| $$  \ $$ \  $$/$$/ | $$| $$ \ $$ \ $$',
	\ '| $$  | $$| $$_____/| $$  | $$  \  $$$/  | $$| $$ | $$ | $$',
	\ '| $$  | $$|  $$$$$$$|  $$$$$$/   \  $/   | $$| $$ | $$ | $$',
	\ '|__/  |__/ \_______/ \______/     \_/    |__/|__/ |__/ |__/',
	\ ]                                                          

let g:startify_lists = [
	\ { 'type': 'files',     'header': ['   MRU']            },
	\ { 'type': 'sessions',  'header': ['   Sessions']       },
	\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
	\ { 'type': 'commands',  'header': ['   Commands']       },
	\ ]
" }}}

" NERDTree {{{
let g:NERDTreeChDirMode = 2
" }}}

" Bullets.vim {{{
let g:bullets_enabled_file_types = [
	\ 'asciidoc',
	\ 'markdown'
	\]
let g:bullets_enable_ascii_indent = 1

let g:deoplete#enable_at_startup = 0
" }}}

"
" Google Drive {{{
"
tnoremap <Esc> <C-\><C-n><CR>
tnoremap <F4> <C-\><C-n>:bd!<CR>
tnoremap <expr> <C-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'

function! GdrivePush(folder)
	" Write file
	write
	" open new split at bottom
	split
	execute "normal! \<C-w>J" 
	" get filetype and paths
	let l:ft = &ft
	let l:filepath = expand('%:p')
	let l:parent = expand('%:p:h')
	let l:root = expand('%:p:h:h')
	" start terminal
	terminal
	" get terminal ID
	let l:id = b:terminal_job_id
	
	" if adoc export to pdf
	if l:ft =~? 'asciidoc\w*'
		" execute '!asciidoctor-pdf -r asciidoctor-diagram' . expand('%')
		call jobsend(l:id, 'asciidoctor-pdf -r asciidoctor-diagram '  . '"' . l:filepath . '"' . "\<CR>")
	endif

	" push . or ..
	if a:folder == ''
		" execute push command
		" execute '!drive push ' . expand('%:p:h')
		" call feedkeys('idrive push ' . l:folder_path . "\<CR>", 'n')
		call jobsend(l:id, 'drive push ' . '"' . l:parent . '"' . "\<CR>")
	elseif a:folder == 'm'
		" execute '!drive push ' . expand('%:p:h:h')
		call jobsend(l:id, 'drive push ' . '"' . l:root . '"' . "\<CR>")
	endif

	startinsert
endfunction

function! GdrivePull(folder)
	" open new split at bottom
	split
	execute "normal! \<C-w>J" 
	" get filetype and paths
	let l:parent = expand('%:p:h')
	let l:root = expand('%:p:h:h')
	" start terminal
	terminal
	" get terminal ID
	let l:id = b:terminal_job_id

	if a:folder == ''
		" execute '!drive pull ' . expand('%:p:h')
		call jobsend(l:id, 'drive pull ' . '"' . l:parent . '"' . "\<CR>")
	elseif a:folder == 'm'
		" execute '!drive pull ' . expand('%:p:h:h')
		call jobsend(l:id, 'drive pull ' . '"' . l:root . '"' . "\<CR>")
	endif
endfunction
" }}}

function! OpenPDF()
	execute '!okular ' . '"' . expand('%:r') . '.pdf' . '" &'
endfunction
command! OpendPDF call OpenPDF()

let g:plantuml_set_makeprg = 0

source ~/.config/nvim/mappings.vim
source ~/.config/nvim/asciidoc-support.vim
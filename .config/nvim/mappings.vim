" Misc
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>fr :bro ol<CR>
nnoremap <leader>q :q<CR>

" Buffers
nnoremap <leader>bf :Buffers<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>

" Files / Find
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fw :Windows<CR>

" Windows
nnoremap <leader>wo :only<CR> 
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>

" Startify
nnoremap <leader>wS :Startify<CR>

" Plug
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>

" Configs
nnoremap <leader>vi :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>vg :e ~/.config/nvim/ginit.vim<CR>
nnoremap <leader>vm :e ~/.config/nvim/mappings.vim<CR>
nnoremap <leader>va :e ~/.config/nvim/asciidoc-support.vim<CR>

" AsciiDoctor Export
nnoremap <leader>eah :!asciidoctor -r asciidoctor-diagram "%"<CR>
nnoremap <leader>eap :!asciidoctor-pdf -a pdf-theme=~/Documents/my-theme.yml -r asciidoctor-diagram -r asciidoctor-mathematical "%"<CR>

" Google Drive
nnoremap <leader>gp :call GdrivePush('')<CR>
nnoremap <leader>gP :call GdrivePush('m')<CR>
nnoremap <leader>gd :call GdrivePull('')<CR>
nnoremap <leader>gD :call GdrivePull('m')<CR>

" Spelling
nnoremap <F2> [s1z=

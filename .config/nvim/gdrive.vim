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
		call jobsend(l:id, 'asciidoctor-pdf -a pdf-theme=~/Documents/my-theme.yml -r asciidoctor-diagram '  . '"' . l:filepath . '"' . "\<CR>")
	endif

	" push . or ..
	if a:folder == ''
		" call jobsend(l:id, 'drive push ' . '"' . l:parent . '"' . "\<CR>")
		" TODO: fix rclone (folders)
		" call jobsend(l:id, 'rclone sync "' . l:parent . '" gdrive:' . "\<CR>")
		call jobsend(l:id, 'rclone sync ~/gdrive/SEMESTR\ 10 gdrive:SEMESTR\ 10 --dry-run' . "\<CR>")
	elseif a:folder == 'm'
		" call jobsend(l:id, 'drive push ' . '"' . l:root . '"' . "\<CR>")
		call jobsend(l:id, 'rclone sync "' . l:root . '" gdrive:' . "\<CR>")
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
		" call jobsend(l:id, 'drive pull ' . '"' . l:parent . '"' . "\<CR>")
		call jobsend(l:id, 'rclone sync gdrive:SEMESTR\ 10 ~/gdrive/SEMESTR 10 --dry-run' . "\<CR>")
	elseif a:folder == 'm'
		" execute '!drive pull ' . expand('%:p:h:h')
		call jobsend(l:id, 'drive pull ' . '"' . l:root . '"' . "\<CR>")
	endif
endfunction

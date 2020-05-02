augroup Spelling
	autocmd!

	autocmd FileType asciidoc* setlocal spell spelllang=pl
	" autocmd FileType asciidoc* setlocal textwidth=80 wrap
augroup END

augroup PlantUMLHighlight
	autocmd!

	autocmd FileType asciidoc* call SyntaxRange#Include('\(\]\s*\n\)\@<=[-.]\{4}$', '\(\]\s*\n\)\@<![-.]\{4}$', 'plantuml')
augroup END


" AsciiDoc List Indentation {{{
fun! AddBullet() abort
	let l:current_line_text = getline('.')
	let l:pos = getpos('.')
	let l:pos[2] += 1

	if (l:current_line_text[0] == '*') || (l:current_line_text[0] == '.')
		let l:bullet = l:current_line_text[0]
		call setline('.', (l:bullet . l:current_line_text))
	else
		call setline('.', ('	' . l:current_line_text))
	endif

	call setpos('.', l:pos)
endf

fun! DeleteBullet() abort
	let l:pos = getpos('.')
	let l:pos[2] -= 1
	execute 'normal! 0x'
	call setpos('.', l:pos)
endf
" }}}

augroup Indenting
	autocmd!

	autocmd FileType asciidoc* inoremap <C-t> <C-o>:call AddBullet()<CR>
	autocmd FileType asciidoc* inoremap <C-d> <C-o>:call DeleteBullet()<CR>
augroup END

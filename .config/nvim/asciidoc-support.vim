augroup Spelling
	autocmd!

	autocmd FileType asciidoc* setlocal spell spelllang=pl
augroup END

augroup PlantUMLHighlight
	autocmd!

	autocmd FileType asciidoc* call SyntaxRange#Include('\(\]\s*\n\)\@<=[-.]\{4}$', '\(\]\s*\n\)\@<![-.]\{4}$', 'plantuml')
augroup END

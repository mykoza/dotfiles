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
	\	'colorscheme': 'gruvbox',
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

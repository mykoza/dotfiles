let g:startify_bookmarks = [ {'i': '~/.config/nvim/init.vim'}, {'g': '~/.config/nvim/ginit.vim'}, {'d': '~/gdrive/'} ]
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

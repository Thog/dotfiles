if has('nvim')
	" Enable python interpreter
	let g:python_host_prog = '/usr/bin/python'
	let g:loaded_python3_provider = 1
	set shell=/bin/zsh

	" Import School base vimrc
	if (!empty($SCHOOL))
		source /usr/share/vim/vimrc
		source /usr/share/vim/vim73/plugin/stdheader.vim
		set cc=80 " For norme checking
	else
		source ~/.vim/basic.vim
	endif
endif

syntax on
set omnifunc=syntaxcomplete#Complete
let g:current_path_for_nerd_init=expand('%:p:h')
let g:ctrlp_map = '<C-f>'

source ~/.vim/signify.vim
source ~/.vim/syntastic.vim

set mouse=a
set ai
set nu
set ts=4
set t_Co=256
set cursorline
set whichwrap+=<,>,h,l,[,]
set noswapfile
set splitright
set list listchars=tab:»·,trail:·

source ~/.vim/keymap.vim

hi CursorLine term=bold cterm=bold guibg=Grey40

""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
set rtp+=~/.nvim/bundle/Vundle.vim

" Plugins
source ~/.vim/plugins.vim

" Custom actions
source ~/.vim/utils.vim

filetype plugin indent on
if (empty($DOT_INSTALL))
	colorscheme molokai
endif

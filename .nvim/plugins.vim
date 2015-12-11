call vundle#begin()
" Plugins start
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'othree/vim-autocomplpop'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'lunaru/vim-twig'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mhinz/vim-signify'
Plugin 'vim-scripts/molokai'
Plugin 'majutsushi/tagbar'

"" Disable powerline on nvim because nvim doesn't have a build-in python
"" (Waiting for #1507)
if !has('nvim')
	Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
else
	source ~/.vim/lightline.vim
	Plugin 'itchyny/lightline.vim'
endif

" Plugins end
call vundle#end()

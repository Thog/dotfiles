noremap <C-h> :GundoToggle<CR>
noremap <C-w>				:q!<CR>
noremap <C-r>				:NERDTreeToggle<CR>:e<CR>:NERDTreeToggle<CR>
noremap <C-d>				:vs
noremap <S-d>				:split
noremap <C-t>				:tabedit
noremap <C-g>				:NERDTreeToggle<CR>
noremap <S-Right>			<C-w><Right>
noremap <S-Left>			<C-w><Left>
noremap <S-Up>				<C-w><Up>
noremap <S-Down>			<C-w><Down>
noremap <C-u>				<C-r>
noremap <C-v>				p
noremap <C-c>				y
noremap <C-a>				gg<S-v>G
noremap <silent>	<C-s>	:w!<CR>
noremap <silent>	<C-q>	:qa<CR>
noremap <F6> :TagbarToggle<CR>

inoremap <C-w>				<Esc>:q!<CR>
inoremap <C-k>				<Esc>:help key-notation<CR>
inoremap <C-t>				<Esc>:tabedit
inoremap <C-v>				<Esc>pi
inoremap <C-c>				<Esc>yi
inoremap <C-u>				<Esc><C-r>i
inoremap <C-a>				<Esc>gg<S-v>G
inoremap <silent>	<C-s>	<Esc>:w!<CR>
inoremap <silent>	<C-q>	<Esc>:qa<CR>

vnoremap <Tab>				>
vnoremap <S-Tab>			<


" School commands
if (!empty($SCHOOL))
	noremap <C-p>				:!(open /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app)<CR>
	noremap <F7>				:!norminette **/*.{c,h}<CR>
endif

autocmd	BufNewFile	*.h	call	Generate_h()
autocmd VimEnter * call s:actionForOpen()
autocmd BufCreate * call s:addingNewTab()
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
au BufNewFile,BufRead *.ex set filetype=elixir
function! s:actionForOpen()
	let filename = expand('%:t')
	NERDTree
	setlocal statusline=%#Normal#
	if !empty(filename)
		wincmd l
	endif
endfunction
function! s:addingNewTab()
	let filename = expand('%:t')
	if winnr('$') < 2 && exists('t:NERDTreeBufName') == 0
		NERDTree
		if !empty(filename)
			wincmd l
		endif
	endif
endfunction

function! s:CloseIfOnlyNerdTreeLeft()
	if exists("t:NERDTreeBufName")
		if bufwinnr(t:NERDTreeBufName) != -1
			if winnr("$") == 1
				q
			endif
		endif
	endif
endfunction

function! Generate_h()
	let l:name = expand('%:f')
	let l:cmd = '/usr/bin/basename ' . l:name
	let l:newname = system(l:cmd)
	let l:newname = toupper(l:newname)
	let l:newname = substitute(l:newname, "\\.", "_", "g")
	let l:newname = substitute(l:newname, "\\n", "", "g")
	exe ":normal A" . "#ifndef " . l:newname . "\n# define " . l:newname . "\n\n\n\n#endif"
endfunction

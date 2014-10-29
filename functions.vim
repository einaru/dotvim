" ================ Functions ===============================

fun! StripTrailingWhitespaces()
	let l=line(".")
	let c=col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun
nmap <silent> <Leader>st :call StripTrailingWhitespaces()<cr>


fun! AppendModeline()
	let l:modeline = printf(" %s: set ts=%d sw=%d tw=%d %set :",
		\ 'vim', &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
	let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
	call append(line("$"), l:modeline)
endfun
nmap <silent> <Leader>ml :call AppendModeline()<cr>

" Subst(lineno, pattern, replace)
" If and only if a match for a:pattern is found in line at a:lineno,
" replace with a:replace.
fun! s:Subst(lineno, pattern, replace)
	let curline = getline(a:lineno)
	if match(curline, a:pattern) != -1
		let newline = substitute(curline, a:pattern, a:replace, '')
		if (newline != curline)
			keepjumps call setline(a:lineno, newline)
		endif
	endif
endfun

" ToggleTodoTag()
" Simple utility function for marking todo tags done, and vice versa.
" Matching timestamps is also updated.
fun! ToggleTodoTag()
	" Get the current line
	let save_cursor = getpos('.')
	let lineno = line('.')
	let curline = getline(lineno)

	let match_found = 0
	if match(curline, 'TODO') != -1
		let tag_pattern = 'TODO'
		let tag_replace = 'DONE'
		let match_found = 1
	elseif match(curline, 'DONE') != -1
		let tag_pattern = 'DONE'
		let tag_replace = 'TODO'
		let match_found = 1
	elseif match(curline, 'FIXME') != -1
		let tag_pattern = 'FIXME'
		let tag_replace = 'FIXED'
		let match_found = 1
	elseif match(curline, 'FIXED') != -1
		let tag_pattern = 'FIXED'
		let tag_replace = 'FIXME'
		let match_found = 1
	endif

	" Do substitution
	if match_found == 1
		let date_pattern = '\(\d\{4}\)\(-\d\{2}\)\(-\d\{2}\)'
		let date_replace = strftime('%Y-%m-%d')
		call s:Subst(lineno, tag_pattern, tag_replace)
		call s:Subst(lineno, date_pattern, date_replace)
	endif

	" Restore cursor position
	call setpos(".", save_cursor)
endfun
map <Leader>d :call ToggleTodoTag()<cr>
map <Leader>tt :call ToggleTodoTag()<cr>

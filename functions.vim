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


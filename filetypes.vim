if has('autocmd')
	set ofu=syntaxcomplete#Complete

	au FileType python     set omnifunc=pythoncomplete#Complete
	au FileType javascript set omnifunc=javascriptcomplete#Complete
	au FileType html       set omnifunc=htmlcomplete#Complete
	au FileType css        set omnifunc=csscomplete#Complete

	" C/C++
	au FileType c,cpp set noai ts=2 sw=2 sts=2

	" Python
	au FileType python set ts=8 sw=4 sts=4 et

	" Html, Css ...
	au BufNewFile,BufRead *.jade set ft=html
	au FileType html,xhtml,xml,xsd,css set ts=2 sw=2 sts=2 noet

	" Javascript
	au BufNewFile,BufRead *.json set ft=javascript
	au FileType javascript set ts=2 sw=4 sts=4 noet

endif

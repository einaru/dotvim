" ================ Filetypes ===============================

if has('autocmd')

	" ============ Completion ==============================
	"set ofu=syntaxcomplete#Complete

	" ============ C/C++ ===================================
	au FileType c,cpp setl noai ts=2 sw=2 sts=2 noet

	" ============ Python ==================================
	au FileType python setl ts=8 sw=4 sts=4 et nosi
	au FileType python setl colorcolumn=73,80 number list

	" ============ Html, Css, ... ==========================
	au BufNewFile,BufRead *.jade setl ts=2 sw=2 sts=2 noet
	au FileType html,xhtml,xsd,css,ant setl ts=2 sw=2 sts=2 noet
	au BufNewFile,BufRead *.md,*.markdown setl ft=markdown

	" ============ Glade UI files ==========================
	au BufNewFile,BufRead *.ui,*.page setl ts=2 sw=2 sts=2 et
	au FileType xml set ts=2 sw=2 sts=2 et

	" ============ Javascript ==============================
	au BufNewFile,BufRead *.json setl ft=javascript
	au FileType javascript setl ts=4 sw=4 sts=4 noet

	" ============ LaTeX ===================================
	let g:tex_flavor='latex'
	au FileType tex setl ts=2 sw=2 sts=2 noet tw=100 cc=100
	au FileType bib setl ts=2 sw=2 sts=2 et
	" move on soft lines in insert mode
	"au FileType tex map <buffer> <Down> gj
	"au FileType tex imap <buffer> <Down> <C-o>g<Down>
	"au FileType tex map <buffer> <Up> gk
	"au FileType tex imap <buffer> <Up> <C-o>g<Up>

endif

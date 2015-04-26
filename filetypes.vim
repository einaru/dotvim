" ================ Filetypes ===============================

if has('autocmd')

	" ============ Completion ==============================
	set ofu=syntaxcomplete#Complete

	" ============ C/C++ ===================================
	au FileType c,cpp set noai ts=2 sw=2 sts=2 noet

	" ============ Python ==================================
	au FileType python set ts=8 sw=4 sts=4 et nosi

	" ============ Html, Css, ... ==========================
	au BufNewFile,BufRead *.jade set ts=2 sw=2 sts=2 noet
	au FileType html,xhtml,xsd,css,ant set ts=2 sw=2 sts=2 noet
	au BufNewFile,BufRead *.md,*.markdown set ft=markdown

	" ============ Glade UI files ==========================
	au BufNewFile,BufRead *.ui set ts=2 sw=2 sts=2 et
	au FileType xml set ts=2 sw=2 sts=2 et

	" ============ Javascript ==============================
	au BufNewFile,BufRead *.json set ft=javascript
	au FileType javascript set ts=4 sw=4 sts=4 noet

	" ============ LaTeX ===================================
	let g:tex_flavor='latex'
	au FileType tex set ts=2 sw=2 sts=2 noet
	" move on soft lines in insert mode
	"au FileType tex map <buffer> <Down> gj
	"au FileType tex imap <buffer> <Down> <C-o>g<Down>
	"au FileType tex map <buffer> <Up> gk
	"au FileType tex imap <buffer> <Up> <C-o>g<Up>

endif

" ================ Key mappings ============================

" Buffers
nmap <C-PageUp> :bprevious<cr>
nmap <C-PageDown> :bnext<cr>
map <A-1> :bprevious<cr>
map <A-2> :bnext<cr>
map <A-3> :buffers<cr>
map <Leader><del> :bdelete<cr>

" Move a line of text up and down
nmap <A-j> mz:m+<cr>`z
nmap <A-k> mz:m-2<cr>`z
vmap <A-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <A-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Fast saving
nmap <Leader>w :w!<cr>

" Edit and source the vimrc file
map <Leader>ve :e ~/.vimrc<cr>
map <Leader>vs :so ~/.vimrc<cr>

" Run make
map <Leader>m :!make<cr>


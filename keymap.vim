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
map <Leader>vke :e ~/.vim/keymap.vim<cr>
map <Leader>vfe :e ~/.vim/functions.vim<cr>
map <Leader>vte :e ~/.vim/filetypes.vim<cr>

" Run make
map <Leader>m :!make<cr>
map <Leader>sm :silent make<cr>
map <Leader>smv :silent make view<cr>

" Toggle spelling
map <Leader>ss :setlocal spell!<cr>

" Toggle paste mode
map <Leader>pp :setlocal paste!<cr>

" Toggle line numbers
map <Leader>n :set number!<cr>


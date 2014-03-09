" ================ Vundle ==================================

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Utilities
Bundle 'scrooloose/nerdtree'
Bundle 'sirver/ultisnips'
Bundle 'honza/vim-snippets'

" Git
Bundle 'tpope/vim-fugitive'

" Cosmetics
Bundle 'bling/vim-airline'

" Javascript
Bundle 'pangloss/vim-javascript'

" Html, xml, css, markdown, ...
Bundle 'othree/html5.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'lepture/vim-jinja'

" Python
"Bundle 'davidhalter/jedi-vim'
"Bundle 'andviro/flake8-vim'

filetype plugin indent on

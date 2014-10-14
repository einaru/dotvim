" ================ Vundle ==================================

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

"" let Vundle manage Vundle
Plugin 'gmarik/vundle'

"" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'valloric/youcompleteme'

" Git
Plugin 'tpope/vim-fugitive'

" Cosmetics
Plugin 'bling/vim-airline'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'

" Html, xml, css, markdown, ...
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'lepture/vim-jinja'
"Plugin 'gorodinskiy/vim-coloresque'
"Plugin 'mattn/emmet-vim'

" Python
Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'klen/python-mode'
"Plugin 'nvie/vim-flake8'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'andviro/flake8-vim'

call vundle#end()
filetype plugin indent on

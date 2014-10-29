" ================ Vundle ==================================

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

"" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Cosmetics
Plugin 'einaru/vim-colorschemes'
Plugin 'bling/vim-airline'

"" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'

" Git
Plugin 'tpope/vim-fugitive'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'

" Html, xml, css, markdown, ...
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'lepture/vim-jinja'

" Python
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'nvie/vim-flake8'

" Vala
Plugin 'einaru/vim-vala-bim'

call vundle#end()
filetype plugin indent on

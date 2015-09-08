" ================ Vundle ==================================

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

"" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Cosmetics
Plugin 'einaru/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'bling/vim-airline'

"" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'

" Vala
Plugin 'einaru/vim-vala-bim'

" Python
"Plugin 'davidhalter/jedi-vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'nvie/vim-flake8'

" Html, xml, css, markdown, ...
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'lepture/vim-jinja'
Plugin 'ap/vim-css-color'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype plugin indent on

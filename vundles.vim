" ================ Vundle ==================================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'

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

" Python
Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'klen/python-mode'
"Plugin 'nvie/vim-flake8'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'andviro/flake8-vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins;
"                     append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins;
"                     append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

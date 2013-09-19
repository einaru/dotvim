filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
Bundle "gmarik/vundle"

" javascript
Bundle 'pangloss/vim-javascript'

" html, xml, css, markdown, ...
Bundle 'othree/html5.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'lepture/vim-jinja'
Bundle 'mattn/emmet-vim'

" cosmetics
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

filetype plugin indent on

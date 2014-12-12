set nocompatible

" ================ General Config ==========================

syntax on                    " syntax highlighting
set autochdir                " switch to current directory
set hidden                   " possible to change buffers without saving
set noerrorbells             " disable noise
set novisualbell             " disable visual noise
set modeline                 " assume modelines in files
set modelines=10             " number of lines to look for modelines
set ruler                    " use statusline with cursor position, etc.
set showmatch                " highlight matching braces
set matchtime=1              " how long the match is visible
set showcmd                  " display incomplete commands
set switchbuf=useopen        " switch to open buffer if exists
set noautowrite              " Never write a file unless requested
set noautowriteall           " ... NEVER!
set hlsearch                 " highlight matching search patterns
set lazyredraw               " don't redraw while executing macros

" ================ Vundle ==================================

if filereadable(expand('~/.vim/vundles.vim'))
	source ~/.vim/vundles.vim
endif

" ================ Swap and Backup =========================

" Create directories if they don't exist
silent !mkdir ~/.vim/backup >/dev/null 2>&1
silent !mkdir ~/.vim/swap >/dev/null 2>&1

set backup                   " enable backup
set backupdir=~/.vim/backup  " location for backup files
set directory=~/.vim/swap    " location for swap files

" ================ Scrolling ===============================

set scrolloff=3              " start scrolling 'n' lines away from margins
set sidescrolloff=3
set sidescroll=1

" ================ Indentation =============================

set autoindent               " copy indent from current line
set smartindent
set smarttab
set tabstop=4                " number of spaces a <TAB> counts for
set shiftwidth=4             " number of spaces used for autoindent
set softtabstop=4
set noexpandtab

" Display special characters visually
set lcs=tab:\|-,trail:~,nbsp:¬,precedes:<,extends:>
set linebreak
set list

" Add a highlight group to look out for trailing whitespaces
highlight TrailingWhitespace ctermbg=red guibg=red
au InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/
au InsertLeave * match TrailingWhitespace /\s\+$/
au BufWinEnter * match TrailingWhitespace /\s\+$/
au BufWinLeave * call clearmatches()  " avoids memory leak

" ================ Filetypes ===============================

if filereadable(expand('~/.vim/filetypes.vim'))
	source ~/.vim/filetypes.vim
endif

" ================ Functions ===============================

if filereadable(expand('~/.vim/functions.vim'))
	source ~/.vim/functions.vim
endif

" ================ Key mappings ============================

if filereadable(expand('~/.vim/keymaps.vim'))
	source ~/.vim/keymaps.vim
endif

" ================ Plugin specifics ========================

" UltiSnips snippets engine
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:UltiSnipsEditSplit='horizontal'

" ================ Gvim ====================================

if has('gui_running')
	colorscheme lucius
	LuciusLightHighContrast
	"set columns=80
	"set guifont=Monospace\ 8
	set guioptions+=c  " use console dialogs
	set guioptions-=T  " disable gui toolbar

	" Airline statusbar
	set laststatus=2
	let g:airline_powerline_fonts=1
	let g:airline_theme='luna'
	let g:airline#extensions#branch#enabled=1
else
	set t_Co=256  " needed in order to get colors for some schems, e.g. lucius
	colorscheme lucius
	LuciusDarkHighContrast
endif

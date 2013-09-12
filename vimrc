set nocompatible

" ================ General Config ====================

syntax on                   " syntax highlighting
set autochdir               " switch to current directory
set hidden                  " possible to change buffers without saving
set noerrorbells            " disable noise
set novisualbell            " disable visual noise
set modeline                " assume modelines in files
set modelines=10            " number of lines to look for modelines
set ruler                   " use statusline with cursor position, etc.
set showmatch               " highlight matching braces
set matchtime=1             " how long the match is visible
set showcmd                 " display incomplete commands
set switchbuf=useopen       " switch to open buffer if exists
set noautowrite             " Never write a file unless requested
set noautowriteall          " ... NEVER!
set hlsearch                " highlight matching search patterns

" ================ Vundle ============================

if filereadable(expand('~/.vim/vundles.vim'))
	source ~/.vim/vundles.vim
endif

" ================ Swap and Backup ===================

" Create directories if they don't exist
silent !mkdir ~/.vim/backup >/dev/null 2>&1
silent !mkdir ~/.vim/swap >/dev/null 2>&1

set backup                  " enable backup
set backupdir=~/.vim/backup " location for backup files
set directory=~/.vim/swap   " location for swap files

" ================ Indentation =======================

set autoindent              " copy indent from current line
set smartindent
set smarttab
set tabstop=4               " number of spaces a <TAB> counts for
set shiftwidth=4            " number of spaces used for autoindent
set softtabstop=4
set noexpandtab

" ================ Scrolling =========================

set scrolloff=8             " start scrolling 'n' lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Filetypes =========================

if filereadable(expand('~/.vim/filetypes.vim'))
	source ~/.vim/filetypes.vim
endif

" ================ Mappings ==========================

nmap <C-PageUp> :bprevious<cr>
nmap <C-PageDown> :bnext<cr>
map <A-1> :bprevious<cr>
map <A-2> :bnext<cr>
map <A-3> :buffers<cr>
map <Leader><del> :bdelete<cr>

" ================ Gvim ==============================

if has('gui_running')
	colorscheme Tomorrow
	set lines=24 columns=80
	set guifont=Monospace\ 10
	set guioptions+=c   " use console dialogs
	set guioptions-=T   " disable gui toolbar
endif

" ================ Airline ===========================

set laststatus=2
let g:airline_powerline_fonts=1

" ================ Functions =========================

fun! StripTrailingWhitespaces()
	let l=line(".")
	let c=col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun

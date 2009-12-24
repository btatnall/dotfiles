" compatibility
set nocp

filetype plugin indent on  " Automatically detect file types.
set fileformats=unix,dos,mac

" Colors
syntax enable
colorscheme desert

" Folding
set fen
set fdl=10
set fdl=10
set foldmethod=syntax
set foldtext=getline(v:foldstart)
set fillchars=fold:\ " note whitespace after

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab autoindent

" Indent
set ai
set si
set cindent

"only 1 space after sentences
set cpoptions-=J

" Switch between windows with <C-J> and <C-K>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
set winminheight=0
set winheight=6

" Scrolling
set scrolljump=2

set ruler

set showmatch
set matchtime=1

set hlsearch
map ? :nohlsearch<CR>
set ignorecase
set smartcase

set listchars=tab:>-,trail:.
set list

set confirm

" Autoload file change
set autoread

set nobackup
set nowritebackup
set noswapfile

" NERDTree
let NERDTreeWinSize=24
let NERDTreeChDirMode=2

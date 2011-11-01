" compatibility
set nocp

" Setup bundles
runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
end

filetype plugin indent on  " Automatically detect file types.
set fileformats=unix,dos,mac

" Colors
syntax enable
colorscheme vividchalk

"backspace over everything in insert mode
set backspace=indent,eol,start

" Folding
set nofoldenable "dont fold by default
set foldmethod=indent "fold based on indent
" set foldmethod=syntax
set foldnestmax=3 "deepest fold is 3 levels
"set fillchars=fold:\ " note whitespace after
"set foldtext=getline(v:foldstart)

" Wildmode
set wildmenu
set wildmode=list:longest,full

" Mouse
set mouse=a

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab autoindent

" Indent
set ai
set si
set cindent

" Turn off window resizing on buffer close
set noea

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

"display tabs and trailing spaces
set list
if has("multi_byte_encoding")
  set listchars=tab:»\ ,trail:·,extends:>,precedes:<,eol:¬
else
  set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
endif

set confirm

" Autoload file change
set autoread

set nobackup
set nowritebackup
set noswapfile

" NERDTree
let NERDTreeWinSize=25
let NERDTreeChDirMode=2

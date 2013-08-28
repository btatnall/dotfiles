set nocompatible
set modelines=0

let mapleader=","

filetype off
execute pathogen#infect()
Helptags

" syntastic sucks at haml and sass
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby'],
                           \ 'passive_filetypes': ['haml', 'sass'] }

syntax enable
filetype plugin on " figure out filetype automatically
filetype indent on " indent based on filetype

set title " sets shell title to correct thing
set hidden " does good stuff with buffers

set backupdir=/tmp
set directory=/tmp
set autoread " Autoload file change
set nobackup
set nowritebackup
set noswapfile

set term=xterm-256color " force 256 color for colorschemes

if has('gui_running')
  set background=light
  set fuoptions=maxvert,maxhorz " default screen size
  set guioptions-=rL " turn off scrollbar
else
  set go-=T " hide the toolbar by default
  set background=dark
endif

colorscheme solarized
let g:airline_theme="solarized"

" keep a bit of context around current cursor position
set scrolloff=5
set scrolljump=3

set nu " show line numbers

" invisible characters
set list
if has("multi_byte_encoding")
  set listchars=tab:»\ ,trail:·,extends:>,precedes:<,eol:¬
else
  set listchars=tab:\|\ ,trail:.,extends:>,precedes:,eol:$<
endif

nmap ,i :set list!<CR> " Toggle invisible chars

" set default font
set gfn=Inconsolata\ 14

" ignore case in searches, except if you type a capital letter
set ignorecase
set smartcase
set nohlsearch
set incsearch

" easy to source / edit this file
map ,s :source ~/.vimrc<CR>
map ,v :tabnew ~/.vimrc<CR>

set ai
set si
set cindent
set autoindent
set smartindent
set tabstop=2 " remove tabs for 2 spaces
set softtabstop=2
set shiftwidth=2
set expandtab
set cindent
set wildmenu
set wildmode=list:longest,full " make completion better
set shortmess=atI " turn off annoying messages

set backspace=indent,eol,start "backspace over everything in insert mode

" Folding
set nofoldenable "dont fold by default
set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels

" Mouse
set mouse=a

set noea " Turn off window resizing on buffer close

set cpoptions-=J "only 1 space after sentences

" Switch between windows with <C-J> and <C-K>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
set winminheight=0
set winheight=6

set ruler

set showmatch
set matchtime=1

set relativenumber

map <F7> mzgg=G`z<CR>

" map comments to apple/
nmap <D-/> ,c<Space>
vmap <D-/> ,c<Space>
imap <D-/> <C-O>,c<Space>

" bind command-] to shift right
nmap <D-]> >>
vmap <D-]> >>
imap <D-]> <C-O>>>
 
" bind command-[ to shift left
nmap <D-[> <<
vmap <D-[> <<
imap <D-[> <C-O><<

" fuzzy finder mappings
map <leader>m :FuzzyFinderFile**/<CR>
map <leader>t :FufTag!<CR>
map <leader>n :FufFile**/<CR>
map <leader>e :FufBuffer<CR>
map <LocalLeader>r :FufRenewCache<CR> " renew finder cache shortcut

" NERDTree
let NERDChristmasTree = 1 " Enable nice colors
let NERDTreeHighlightCursorline = 1 " Make it easy to see where we are
let NERDTreeShowBookmarks = 1 " Make bookmarks visible
let NERDTreeShowHidden = 1 " Show hidden files
let NERDTreeIgnore=['\.$', '\~$']
map <silent> <leader>l :NERDTreeFind<CR> " Jump to current file
nmap <F2> :NERDTreeToggle<CR> " Make F2 open NERDTree

" split editing settings
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_ 
set wmh=0

" ack integration
set grepprg=ack\ -a
set swb=newtab " switch buffer mode opens a new tab

nnoremap <silent> <leader>T :TlistToggle<CR> " taglist shortcuts
inoremap <C-space> <C-n>                     " Remap autocomplete to CTRL+SPACE

" Remap alt-j alt-k to insert blank lines without going to insert mode
nnoremap <silent><D-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><D-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" paste toggle
set pastetoggle=<F5>

" ruby tests from drew pope
map <silent> <LocalLeader>rb :RunAllRubyTests<CR>
map <silent> <LocalLeader>rc :RunRubyFocusedContext<CR>
map <silent> <LocalLeader>rf :RunRubyFocusedUnitTest<CR>

command! -nargs=1 Gg !git grep <args> " git grep

" clear trailing whitespaces
command! Gctw :%s/\s\+$//

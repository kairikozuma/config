""vim rc file with descriptions

"""==== SPACES AND TABS ====
"Turn on syntax highlighting
syntax on

"Use soft tabs (spaces instead of tabs)
set expandtab

"Set tab width
set shiftwidth=2 

set tabstop=2 

"Number of spaces in tab when editing
set softtabstop=2

set smarttab

"Set autoindent
set autoindent
set smartindent

"Set style by file type
filetype indent on
filetype plugin on


"""==== UI CONFIG ====

"Show line number
set number

"Show command
set showcmd

"Underline current line
set cursorline

"Set visual autocomplete
set wildmenu

"Show matching parenthesis, brackets, etc.
set showmatch

"Highlight matches
set hlsearch

"Search as characters are entered
set incsearch

" always show the status line
set laststatus=2

"Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"Remove sound on errors
set noerrorbells
set novisualbell


"""==== KEY BINDINGS ====

"Move to beginnig and end of line
nnoremap B ^
nnoremap E $

"Disable some keys
nnoremap $ <nop>
nnoremap ^ <nop>

"Treat long lines as break lines
map j gj
map k gk

"Highlight last inserted text
nnoremap gV `[v`]

"Extra commands with leader
let mapleader = ","
let g:mapleader = ","

"Fast save
nmap <leader>w :w!<cr>

"Exit insert mode with 'jk'
inoremap jk <esc>

"Comand to turn off highlight search: ,<space>
nnoremap <leader><space> :nohlsearch<CR>


"""==== BEHAVIOR ====

"Set to autoread from file if changed from outside
set autoread

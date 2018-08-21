execute pathogen#infect()
" NERDTree Mappings
nnoremap <F1> :NERDTreeToggle<CR>
inoremap <F1> :NERDTreeToggle<CR>

"Window movement mapping
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
set splitbelow
set splitright

"Map buffer to space
nnoremap <Leader><Space> :bn<CR>
nnoremap <C-Space> :bp<CR>

set nocompatible "Turn off compatibility mode
set mouse=n
set path+=** "Inbuilt fuzzy file search..no plugin required!!
set hidden "Make buffer as hidden if it is modified
set nu
set ma "sets modifiabe, I dont exactly know the fuck it means
syntax enable
set autoread
set history=700
set ttimeout ttimeoutlen=0
"source /apollo/env/envImprovement/var/vimrc
set runtimepath^=~/.vim/bundle/gundo.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=/usr/local/opt/fzf
set runtimepath^=~/.vim/bundle/vim-markdown-master
set runtimepath^=~/.vim/bundle/fzf.vim
" Enable filetype plugin
filetype plugin on
filetype indent on

" MapLeader
let mapleader = ","
let g:mapleader = ","

" VIM UI ReLATED CHANGES
set t_Co=256
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class,*.DS_STORE
"Always show current position
set ruler
set backspace=eol,start,indent
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
set showmatch "highlight matching brackets
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic
" How many tenths of a second to blink when matching brackets
set mat=2

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set cursorline

" move vertically by visual line
nnoremap j gj
nnoremap k gk
let g:rehash256 = 1
let g:molokai_original=1
let NERDTreeIgnore = ['_site']
highlight SignColumn guibg=#272822

"keymapping for quit
nnoremap zz :q!<CR>
nnoremap \\ :nohl<CR>

"cltlP mappings nnoremap <Leader>n :CtrlP<CR> " Open file menu
nnoremap <Leader>b :CtrlPBuffer<CR> " Open buffer menu
nnoremap <Leader>f :CtrlPMRUFiles<CR> " open most recent files
"VIM JavaComplete 
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

nnoremap <Space>  za "Toggle fold



" let base16colorspace=256  " Access colors present in 256 colorspace
" set termguicolors
" set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vimwiki/vimwiki'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'ycm-core/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" set term=screen-256color
" set termguicolors
colorscheme gruvbox
set background=dark
" colorscheme base16-default-dark 

execute pathogen#infect()
filetype plugin indent on
set cindent
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set nowrap
set wildmenu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn,*.class
set foldmethod=syntax
set nofoldenable
set nocompatible              " be iMproved, required
filetype off                  " required
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set shortmess+=c
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set magic               " Use 'magic' patterns (extended regular expressions).
set linebreak
set relativenumber
set number
set autoindent
syntax on
set ruler
set showmode
set showcmd
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
set hidden
set matchtime=2

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/


" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-P>', 'n') ==# ''
  nnoremap <silent> <C-P> :nohlsearch<CR><C-P>
endif

"vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#404040'
let g:indentLine_char = '|'

" KEYBINDINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Misc keys
imap jk <Esc>
imap ii <Esc>
"imap <Tab> <C-N>
" map <CR> o<Esc>
let mapleader = "\<Space>"
map ö ^
map ä $

" LEADER KEYS

" Search and Replace
nmap <Leader>s :%s//gc<Left><Left><Left>
"Quick function brackets
nmap <Leader><CR> a {<CR>}<Esc>O

"Quick system copypaste
map <leader>y "+y
map <leader>p "+p

let g:vimwiki_list = [{'path': '~/.notes/notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

autocmd BufWritePost *.tex Dispatch! latexmk -pdf main.tex

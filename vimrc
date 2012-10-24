try
  source $REAL_HOME/.vimrc
catch /E484/
endtry
syntax on
colorscheme molokai

set nocompatible    " We're running Vim, not Vi!
filetype off         " Enable filetype detection
filetype indent on  " Enable filetype-specific indenting
filetype plugin on  " Enable filetype-specific plugins
set backspace=2     " allow backspacing over everything in insert mode
set history=1000    " keep 1000 lines of command line history
set incsearch       " do incremental searching
set ic              " ignore case in search patterns
set showcmd         " display incomplete commands
set nosol           " cursos is kept in the same column (if possible)
set sw=4            " identation now takes just 4 spaces at a time

set ruler           " show the cursor position all the time
set hlsearch        " highlight searches
set nobackup        " do not keep a backup file
set ignorecase      " ignore case when searching
set title           " show title in console title bar
set ttyfast         " smoother changes
set tabstop=4
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set expandtab       " tabs are converted to spaces, use only when required
set sm              " show matching braces, somewhat annoying...
set smartcase        " Do case insensitive matching
set pastetoggle=<F3>
set ls=2
set number

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set encoding=utf-8
set t_Co=256 
set expandtab
set cmdheight=2
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
" set number        " show line numbers
" set noignorecase  " don't ignore case
" set nowrap        " don't wrap lines
" set ls=2          " allways show status line
" set laststatus=2  " always display the status line
" set cindent       " cindent

let loaded_vimspell = 1
let g:molokai_original = 1
let g:Powerline_symbols = 'fancy'
let g:molokai_original = 1

autocmd FileType text setlocal textwidth=78
autocmd Filetype ruby source ~/.vim/ruby-macros.vim
nmap <silent> <C-D> :NERDTreeToggle<CR>

" Vundle configuration
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" My Bundles here:
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'tomtom/tcomment_vim'

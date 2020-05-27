set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set mouse=a
set cmdheight=1
set nu
set cursorline
highlight CursorLineNR ctermbg=white
set shiftwidth=4
set softtabstop=4
set expandtab
set clipboard=unnamedplus
colorscheme desert

set path+=**
set wildmenu

com -nargs=1 -complete=file_in_path Fi tabe | find <args>

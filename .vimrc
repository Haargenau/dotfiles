" Basics {
    set nocompatible
    filetype indent plugin on
    syntax on
" }

" Essentials {
    set nu                          "Acitvates line numbers
    set hidden                      "Allow buffers with unsaved changes 
    set showcmd
    set backspace=indent,eol,start
    set autoindent                  " Match indents on new lines.
    set nostartofline
    set ruler
    set cmdheight=1
    set shiftwidth=4
    set softtabstop=4
    set expandtab                   "Uses spaces instead of tabs
" }

" Search {
    set ignorecase  " case insensitive search
    set smartcase   " If there are uppercase letters, become case-sensitive.
    set incsearch   " live incremental searching
    set showmatch   " live match highlighting
    set hlsearch    " highlight matches
" }

" Interface {
    set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
    set laststatus=2
    colorscheme desert
" }

" Backup {
    set nobackup        " We have vcs, we don't need backups.
    set nowritebackup   " We have vcs, we don't need backups.
    set noswapfile      " They're just annoying. Who likes them?
" }

" Extras {
    set mouse=a                 "Enable the use of the mouse
    set clipboard=unnamedplus   "Set standard copy-paste buffer to systems clipboard
    set path+=**
    set wildmenu
    com -nargs=1 -complete=file_in_path Fi tabe | find <args>
" }


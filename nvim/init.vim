"------------------------------- Plugins -------------------------------
call plug#begin()
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()
"------------------------------- General -------------------------------
let g:tokyonight_style = "night"
colorscheme tokyonight
let mapleader = ","
                                                    "pressing spacebar removes the highlight
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> 
set cursorline                                      "show line where cursor is
set encoding=utf8
set expandtab                                       "use spaces instead of tabs
set ignorecase                                      "ignore case with search
set noruler                                         "no ruler, use statusline
set rnu                                             "relative linenumbers
set scrolloff=3                                     "keep three lines before and after cursor
set shiftwidth=4                                    "4 spaces for autoindent
set showcmd                                         "show incomplete commands
set showmatch                                       "show matching brackets
set smarttab                                        "be smart with using tabs
set softtabstop=4                                   "multiple spaces as tabstop
                                                    "statusline
set statusline=                                     "emtpy statusline
set statusline+=\ %m                                "modified?
set statusline+=\ %y                                "filetype
set statusline+=\ %r                                "readonly?
set statusline+=\ %F                                "full file path
set statusline+=%=                                  "right side
set statusline+=\ %c:%l/%L                          "column, linenumber / maximum linenumber
set statusline+=\ %p%%                              "percentage of file
set statusline+=\ [%n]                              "buffer number
set tabstop=4                                       "1 tab == 4 spaces
syntax enable
filetype plugin indent on                           "auto-indent based on file type

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Setup pathogen.vim and other plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

" EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

" NERDTree
" Close when NERDTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Set line numbers
set number

" Colorscheme stuff
" set background=light
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Search highlighting and toggles
:set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto indent
filetype indent plugin on

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set autoindent

" set splits
set splitbelow
set splitright
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Execute python script from file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <S-e> :w<CR>:!clear<CR>:!python %<CR>

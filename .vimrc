"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" => Setup pathogen.vim and other plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

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
set t_Co=256
let g:solarized_termtrans=1
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Search highlighting and toggles
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Golang
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <C-n> :cnext<CR>
"map <C-m> :cprevious<CR>
"nnoremap <leader>a :cclose<CR>
set autowrite

" Build/Test on save.
augroup auto_go
	autocmd!
	autocmd BufWritePost *.go :GoTest
augroup end

" Do autocompletion popup for go after a dot
autocmd FileType go inoremap <buffer> . .<C-x><C-o>

" Do not insert autocomplete strings automagically..
set completeopt+=menuone,noselect,noinsert

"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_gopls_complete_unimported = 1

" keymap GoAlternate to :A
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>c  <Plug>(go-coverage-toggle)

" Keymap Leader / to close all locationlists and quickfix windows
autocmd FileType go nmap <leader>/ :windo lcl\|ccl<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML, JS, Vue
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType html :setlocal sw=2 ts=2
autocmd FileType js :setlocal sw=2 ts=2
autocmd FileType vue :setlocal sw=2 ts=2

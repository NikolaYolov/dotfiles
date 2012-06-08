call pathogen#infect()
syntax on
set hlsearch
set nocp
filetype plugin indent on
:set tags=~/.tags

" Pylint plugin
autocmd FileType python compiler pylint

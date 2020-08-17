" enable syntax highlight
syntax enable

" forget compatibility with vi
set nocompatible

" tab-completion for file related
set path+=**

" show all matching files
set wildmenu

" show cmd
set showcmd

" Ignore case when searching
set ignorecase
set smartcase

" Highlight the cursor line
set cursorline

" Set default vertical split to right
set splitright

" Show invisibles
set listchars=tab:▸\ ,trail:·
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Show line number and listchars
set list
set nu

" exclude venv from C-p
set wildignore=*/venv/*,*/.env/*

" define MakeTags command
command! MakeTags !ctags -R .

" define RemoveWhitespaces command
command RemoveWhitespaces %s/\s\+$//e

" record the last line
set viminfo='10,\"30,:20,%,n~/.viminfo
au BufReadPost * if line("'\"")|execute("normal `\"")|endif

" set highlights, ident
filetype plugin indent on
"autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
"autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
"autocmd FileType bash setlocal expandtab tabstop=4 shiftwidth=4
"autocmd FileType sh setlocal expandtab tabstop=4 shiftwidth=4
"autocmd FileType yaml setlocal expandtab tabstop=2 shiftwidth=2

" set Jenkinsfile highlight
au BufNewFile,BufRead Jenkinsfile setf groovy

" case sensitive to save and quit vim
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" show matching brackets
set showmatch

" show column and lines
set ruler

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

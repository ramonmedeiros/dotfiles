" Use syntax color
:syntax on

" record the last line
set viminfo='10,\"30,:20,%,n~/.viminfo
au BufReadPost * if line("'\"")|execute("normal `\"")|endif

" spaces only for python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" case sensitive to save and quit vim
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" Exibe nome da função
let g:ctags_statusline=1

" Inicializar script automaticamente
let generate_tags=1

" show matching brackets
set showmatch


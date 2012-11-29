" Use space instead Tab
:set tabstop=4
:set expandtab
:set autoindent

" pydiction
filetype plugin on
let g:pydiction_location = '~/.vim/after/pydiction/complete-dict'
let g:pydiction_menu_height = 15

" record the last line
set viminfo='10,\"30,:20,%,n~/.viminfo
au BufReadPost * if line("'\"")|execute("normal `\"")|endif

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

" Exibe os resultados em uma janela vertical
let Tlist_Use_Horiz_Window=0

" Atalho para exibição da Taglist
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>

" Configurações para exibição da Taglist
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

" Pyflakes
if has("gui_running") 
    highlight SpellBad term=underline gui=undercurl guisp=Orange 
endif 

" show matching brackets
set showmatch


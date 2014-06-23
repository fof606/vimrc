set nu
map <leader>cl :close<cr>
map <leader>tf :tabfirst<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taglist 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tt :TlistToggle<cr>

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Right_Window = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => a.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>aa :A<cr>
map <leader>al $a

""""""""""""""""""""""""""""""
" => vimgdb setting
" """"""""""""""""""""""""""""""
map <F8> :run macros/gdb_mappings.vim<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
set tags+=~/.vim_runtime/tagfiles/tags_of_stl;
set tags+=~/.vim_runtime/tagfiles/tags_of_boost;
set tags+=~/.vim_runtime/tagfiles/tags_of_protobuf;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" create tags of boost for every library 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for i in $(find -maxdepth 1 -type d | grep -v '^\.$' | sed 's/\.\///' ); do
"     echo $i;
"     ctags -f ~/tmp_tags/$i.tags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ --sort=foldcase $i;
" done

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => omnicppcomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocp
filetype plugin indent on

set completeopt=menu

" set completeopt = longest,menu
" set completeopt = longest,menuone
" set completeopt = menu,menuone 
" set completeopt = preview,menu

" set completeopt = longest,menu
" let OmniCpp_MayCompleteDot = 1      " autocomplete with .
" let OmniCpp_MayCompleteArrow = 1    " autocomplete with ->
" let OmniCpp_MayCompleteScope = 1    " autocomplete with ::
" let OmniCpp_SelectFirstItem = 2     " select first item (but don't insert)
" let OmniCpp_NamespaceSearch = 2     " search namespaces in this and included files
" let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
" let OmniCpp_GlobalScopeSearch=1     " enable the global scope search
" let OmniCpp_DisplayMode = 1         " Class scope completion mode: always show all members
" let OmniCpp_ShowScopeInAbbr = 1     " show scope in abbreviation and remove the last column
" let OmniCpp_ShowAccess = 1 

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
" :inoremap < <><ESC>i
" :inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for mutil cursor
" Bundle 'terryma/vim-multiple-cursors'
" let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DoxygenToolkit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>dox :Dox<cr>
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Mathias Lorente"
let g:DoxygenToolkit_licenseTag="My own license"   <-- !!! Does not end with "\<enter>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ack.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ackprg = "ack -H --nocolor --nogroup --column"

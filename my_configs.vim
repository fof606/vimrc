set nu
map <leader>cl :close<cr>

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
map <leader>a :A<cr>

""""""""""""""""""""""""""""""
" => vimgdb setting
" """"""""""""""""""""""""""""""
map <F8> :run macros/gdb_mappings.vim<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => omnicppcomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocp
filetype plugin on

" set completeopt = longest,menu
" set completeopt = longest,menuone
" set completeopt = menu,menuone 

set completeopt = preview,menu
let OmniCpp_MayCompleteDot = 1      " autocomplete with .
let OmniCpp_MayCompleteArrow = 1    " autocomplete with ->
let OmniCpp_MayCompleteScope = 1    " autocomplete with ::
let OmniCpp_SelectFirstItem = 2     " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2     " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1     " enable the global scope search
let OmniCpp_DisplayMode = 1         " Class scope completion mode: always show all members
let OmniCpp_ShowScopeInAbbr = 1     " show scope in abbreviation and remove the last column
let OmniCpp_ShowAccess = 1 

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

" :nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
" :nnoremap <silent> <Leader>c :execute 'match Search /\%'.virtcol('.').'v/'<CR>

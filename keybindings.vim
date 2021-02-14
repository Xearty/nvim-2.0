" Toggle between bulgarian phonetic keymap and no keymap
function ToggleKeymap()
    if &keymap ==# ''
        set keymap=bulgarian-phonetic
    else
        set keymap=
    end
endfunction

function ToggleWrap()
    if &wrap ==# 'wrap'
        set nowrap
        nnoremap j gj
        nnoremap k gk
    else
        set wrap
        nnoremap j j
        nnoremap k k
    end
endfunction

" Toggle between bulgarian phonetic keymap and no keymap
nnoremap <silent> <Leader>c :call ToggleKeymap()<CR>

" Toggle wrap
nnoremap <silent> <Leader>w :call ToggleWrap()<CR>

" Open a terminal in the current buffer and go in insert mode
nnoremap <silent> <Leader>t :term<CR>i

" Edit a macro
nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

" Edit config
nnoremap <silent> <Leader>`c :e $MYVIMRC<CR>

" n and N will now always go in the same direction
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]

" Swap lines
nnoremap ]e :m .+1<CR>==
nnoremap [e :m .-2<CR>==
vnoremap ]e :m '>+1<CR>gv=gv
vnoremap [e :m '<-2<CR>gv=gv

" Ranger 
nnoremap <Leader>fr :Ranger<CR>

" Telescope
nnoremap <Leader>ff :Telescope find_files<CR>

" Quit 
nnoremap <Leader>xx :qa!<CR>

nnoremap <Leader>nh :noh<CR>

" Coc
" inoremap <silent><expr> <c-space> coc#refresh()

cmap w!! w !sudo tee %



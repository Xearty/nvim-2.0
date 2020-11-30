set noshowmode
let g:airline_extensions = ['branch']
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline_highlighting_cache = 1


" let g:airline_right_sep='<'
" let g:airline_left_sep='>'
let g:airline_detect_modified=1

let g:airline_inactive_collapse=1
let g:airline_theme='codedark'

let g:airline_mode_map = {
            \ '__'     : '-',
            \ 'c'      : 'C',
            \ 'i'      : 'I',
            \ 'ic'     : 'I',
            \ 'ix'     : 'I',
            \ 'n'      : 'N',
            \ 'multi'  : 'M',
            \ 'ni'     : 'N',
            \ 'no'     : 'N',
            \ 'R'      : 'R',
            \ 'Rv'     : 'R',
            \ 's'      : 'S',
            \ 'S'      : 'S',
            \ ''     : 'S',
            \ 't'      : 'T',
            \ 'v'      : 'V',
            \ 'V'      : 'V',
            \ ''     : 'V',
            \ }


" let g:airline_filetype_overrides = {
            " \ 'coc-explorer':  [ 'CoC Explorer', '' ],
            " \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
            " \ 'fugitive': ['fugitive', '%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'],
            " \ 'gundo': [ 'Gundo', '' ],
            " \ 'help':  [ 'Help', '%f' ],
            " \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
            " \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
            " \ 'startify': [ 'startify', '' ],
            " \ 'vim-plug': [ 'Plugins', '' ],
            " \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
            " \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
            " \ 'vaffle' : [ 'Vaffle', '%{b:vaffle.dir}' ],
            " \ }

" let g:airline_focuslost_inactive = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

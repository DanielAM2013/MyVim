noremap <silent> <F6> :TlistToggle<CR>:NERDTreeToggle<CR>
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

nnoremap <F2> :w!<CR>
inoremap <F2> <Esc>:w!<CR><Right>i

nnoremap <F3> :wq!<CR>
inoremap <F3> <Esc>:wq!<CR>
nnoremap <F4> :q!<CR>
inoremap <F4> <Esc>:q!<CR>

nnoremap <F5> <Esc>:!make 2>&1 \| tee .log<CR><CR>
inoremap <F5> <Esc>:!make 2>&1 \| tee .log<CR><CR><CR>
nnoremap <F7> <Esc>:!make view<CR><CR>
inoremap <F7> <Esc>:!make view<CR><CR>i

nnoremap <S-Right> :tabn<CR>
inoremap <S-Right> <Esc>:tabn<CR>i
nnoremap <S-Left> :tabp<CR>
inoremap <S-Left> <Esc>:tabp<CR>i

noremap <silent> <F6> :TlistToggle<CR>:NERDTreeToggle<CR>

set backspace=2
let g:netrw_browsex_viewer="setsid xdg-open"

let g:syntastic_cpp_include_dirs=['lib']
au BufNewFile,BufRead *.cl setlocal ft=c

set colorcolumn=81
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

set laststatus=2
set t_Co=256
set scrolloff=5

if filereadable(".vim.custom")
	    so .vim.custom
endif

set tabline=

set complete+=k

" MySetup
syntax on
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<

set list
set number
set relativenumber
set wildmenu
set hlsearch
set autoindent
set ruler
set confirm
set shiftwidth=4
set tabstop=4 noexpandtab
set mouse=a
set tw=80
set fo+=t

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

autocmd BufNewFile,BufRead *.cpp set fo+=t

set tags=./.tags,tags;
command! MakeTags !ctags -R .

let g:NERDTreeWinPos = "right"

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
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

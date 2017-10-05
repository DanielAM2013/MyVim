noremap <silent> <F6> :TlistToggle<CR>:NERDTreeToggle<CR>

"function! GoogleSearch()
"	let searchterm = getreg("g")
"	silent! exec "silent! !chromium \"http://google.com/search?q=" . searchterm . "\" &"
"endfunction
"noremap <F8> "gy<Esc>:call GoogleSearch()<CR>


"imap <c-6> <Esc>tabe <cWORD><CR>
"nnoremap ; :


set backspace=2
let g:netrw_browsex_viewer="setsid xdg-open"

" cmus controls
"nnoremap <leader>i :CmusCurrent<cr>
"nnoremap <leader>z :CmusPrevious<cr>
"nnoremap <leader>x :CmusPlay<cr>
"nnoremap <leader>c :CmusPause<cr>
"nnoremap <leader>v :CmusStop<cr>
"nnoremap <leader>b :CmusNext<cr>

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

"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
"runtime plugin/powerline.vim
set tabline=
"setlocal spell spelllang=en

set complete+=k
"set dictionary+=/usr/share/dict/brazilian"

"let g:ctrlp_cmd='CtrlPMRUFiles'
"noremap <c-\> :echo 1<CR>

" MySetup
syntax on
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<,eol:;
"set listchars=tab:>_,trail:̣̣̣̣~,extends:>,precedes:<,eol:$

set list
"set number
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

"autocmd FileType c,cpp setlocal fo+=f
"let g:NERDTreeWinPos = "right"

"function! s:CloseIfOnlyControlWinLeft()
"	if winnr("$") != 1
"		return
"	endif
"	if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
"		\ || &buftype == 'quickfix'
"		q
"	endif
"endfunction

"augroup CloseIfOnlyControlWinLeft
"	au!
"	au BufEnter * call s:CloseIfOnlyControlWinLeft()
"augroup END
"au VimEnter *  NERDTree
"set go+=m

set tags=./.tags,tags;
command! MakeTags !ctags -R .

"function! Switch_nerdtree()
"	:<CR>wh
"endfunction
"autocmd VimEnter * exec "normal \<C-W>h"
let g:NERDTreeWinPos = "right"

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.

"set dictionary+="/usr/share/dict/words"

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

nnoremap <F5> <Esc>:!make<CR><CR>
inoremap <F5> <Esc>:!make<CR><CR><CR>i
nnoremap <F7> <Esc>:!make view<CR><CR>
inoremap <F7> <Esc>:!make view<CR><CR>i

nnoremap <S-Right> :tabn<CR>
inoremap <S-Right> <Esc>:tabn<CR>i
nnoremap <S-Left> :tabp<CR>
inoremap <S-Left> <Esc>:tabp<CR>i



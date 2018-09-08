syntax on

set backspace=2
set colorcolumn=81
set laststatus=2
set t_Co=256
set scrolloff=5
set tabline=
set complete+=k
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
set tags=./.tags,tags;
command! MakeTags !ctags -R .

au BufNewFile,BufRead *.cpp set fo+=t
au BufNewFile,BufRead *.cl setlocal ft=c
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

let g:netrw_browsex_viewer="setsid xdg-open"
let g:syntastic_cpp_include_dirs=['lib']
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

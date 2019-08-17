set mouse-=a
set hls is
set nu

nnoremap <silent> <F11> :YRShow<CR>
set wildcharm=<C-z>
set wildmenu
nnoremap ,e :e **/*<C-z><S-Tab>
nnoremap ,f :find **/*<C-z><S-Tab>

nnoremap ,g :grep -nrI --exclude-dir="\.git" --exclude=tags <cword> ./<CR>

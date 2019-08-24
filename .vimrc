set mouse-=a
set hls is
set nu

set wildcharm=<C-z>
set wildmenu

nnoremap ,e :e **/*<C-z><S-Tab>
nnoremap ,te :tabe **/*<C-z><S-Tab>
nnoremap ,f :find **/*<C-z><S-Tab>
nnoremap ,tf :tabf **/*<C-z><S-Tab>

nnoremap ,g :grep! -nrI --exclude-dir="\.git" --exclude=tags <cword> ./<CR><CR>:copen<CR>
nnoremap ,cg :grep! -nrI --exclude-dir="\.git" --exclude=tags  ./<Left><Left><Left>

nnoremap ,/ :s/\//\\\//g<CR>

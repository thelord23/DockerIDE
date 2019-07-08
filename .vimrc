set mouse-=a
set hls is
set nu

nnoremap <silent> <F11> :YRShow<CR>

source $VIMRUNTIME/defaults.vim

if has('syntax') && has('eval')
  packadd! matchit
endif

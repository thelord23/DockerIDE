set hls is
set nu

nnoremap <silent> <F11> :YRShow<CR>

source $VIMRUNTIME/defaults.vim

" no mouse
set mouse-=a
if has('syntax') && has('eval')
  packadd! matchit
endif

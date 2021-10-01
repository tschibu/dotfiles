" Configuration for VIM

" Basic config
" ------------

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Enable filetype highlighting
if has('filetype')
  filetype indent plugin on
endif

set number
set relativenumber
set encoding=utf-8

" statusbar
set laststatus=2 statusline=%f\ %m\ %{&fileencoding?&fileencoding:&encoding}
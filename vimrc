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


" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent

" TODO: fix it `echo has('conceal')`
let g:indentLine_char = '⦙'

" yamllint
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_sign_error = '✘'
" let g:ale_sign_warning = '⚠'
" let g:ale_lint_on_text_changed = 'never'
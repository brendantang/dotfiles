" vimwiki prerequisites
set nocompatible
filetype plugin indent on

" settings for typing
set expandtab            " tab key produces spaces
set shiftwidth=2         " 2 spaces are used to indent
set softtabstop=2        " editing operations treat a tab as 2 spaces

set title                " informative window title

set belloff=all          " no audio error bells 

" visual settings

syntax on
set number               " show line numbers
colorscheme sixteen " use default ansi 16 colors from term theme

" custom commands:

command! -nargs=* Wrap set wrap linebreak nolist 	" Wrap text for writing prose

command! Typora execute '! open -a Typora ' . shellescape(expand("%")) | " Open current file in Typora

" Quicker split window navigation
:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>

" vimwiki config
let g:vimwiki_list = [{'path': '~/Documents/notes/', 'path_html': '~/code/vimwiki_html/', 
                      \ 'syntax': 'markdown', 'ext': '.md'}] " Set vimwiki path and use markdown


" Ale 
let g:ale_list_window_size = 6
let g:ale_open_list = 0
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '🥵'
let g:ale_sign_warning = '⚠️'
let g:ale_hover_cursor = 1
let g:ale_hover_to_preview = 1
let g:ale_set_balloons = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign

if !has('nvim')
  set ttymouse=xterm2
  set mouse=a
endif


" Elm auto formatting
let g:elm_format_autosave = 1 

" Ruby auto formatting
let g:rufo_silence_errors = 1 " Let ALE report things to me

" Haskell use 4 spaces to a tab
autocmd BufEnter *.hs setlocal expandtab sts=4 sw=4

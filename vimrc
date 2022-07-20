set nocompatible
filetype plugin indent on

" settings for typing
set expandtab            " tab key produces spaces
set shiftwidth=2         " 2 spaces are used to indent
set softtabstop=2        " editing operations treat a tab as 2 spaces

set title                " informative window title

set belloff=all          " no audio error bells 

set backspace=indent,eol,start " allow backspace past where cursor entered insert mode

set re=0 " use new regex engine. If you don't set this, typescript syntax highlighting is crazy slow.

" visual settings

syntax on
set number               " show line numbers
colorscheme sixteen      " use default ansi 16 colors from term theme https://github.com/brendantang/sixteen-vim

" Custom commands

" Wrap text for writing prose
command! -nargs=* Wrap set wrap linebreak nolist 	

command! Typora execute '! open -a Typora ' . shellescape(expand("%")) | " Open current file in Typora

" Quicker split window navigation
:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>

" vimwiki config
" let g:vimwiki_list = [{'path': '~/Documents/notes/', 'path_html': '~/code/vimwiki_html/', 
                      \ 'syntax': 'markdown', 'ext': '.md'}] " Set vimwiki path and use markdown

" Ale 
let g:ale_list_window_size = 6
let g:ale_open_list = 0
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '🥵'
let g:ale_sign_warning = '😬'
let g:ale_hover_cursor = 1
let g:ale_hover_to_preview = 1
let g:ale_set_balloons = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_echo_msg_format = '%linter% says %code%: %s'

if !has('nvim')
  set ttymouse=xterm2
  set mouse=a
endif

" emoji abbreviations
ab :check_mark: ✅
ab :lightbulb: 💡
ab :pin: 📌
ab :bomb: 💣
ab :pill: 💊
ab :construction: 🚧
ab :pencil: 📝
ab :point_right: 👉
ab :book: 📖
ab :link: 🔗
ab :wrench: 🔧
ab :telephone: 📞
ab :email: 📧
ab :computer: 💻
ab :robot: 🤖
ab :factory: 🏭
ab :clipboard: 📋
ab :notebook: 📓
ab :thinky: 🤔
ab :warning: ⚠️
ab :bangbang: ‼️

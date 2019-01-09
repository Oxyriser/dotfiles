"Plugins
"Managed via vim-plug
"Use :PlugInstall / :PlugClean
"Use :PlugUpdate / :PlugUpgrade
call plug#begin('~/.local/share/nvim/plugged')
"Camel/Snake case motion
"Indent object
"Multiple cursors
Plug 'bkad/CamelCaseMotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-multiple-cursors'

"Colorscheme
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'

"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"File explorer
"Quick rename
"MRU
Plug 'scrooloose/nerdtree'
Plug 'danro/rename.vim'
Plug 'vim-scripts/mru.vim'

"FZF
"Git support
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

"Linting
Plug 'w0rp/ale'

"Languages support
Plug 'neovimhaskell/haskell-vim'
Plug 'pangloss/vim-javascript'
Plug 'dag/vim-fish'
Plug 'justinmk/vim-syntax-extra' "For C family
Plug 'tomlion/vim-solidity'
Plug 'kh3phr3n/python-syntax'
Plug 'lifepillar/pgsql.vim'
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'

"Python autocompletion
Plug 'davidhalter/jedi-vim'

"Comment toggle
"HTML auto-close tags
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'

"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Zen Mode
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Colors
set termguicolors
colorscheme gruvbox

"Remap leader
let mapleader=" "

"Camel/Snake case motion
call camelcasemotion#CreateMotionMappings('<leader>')

"Splits
"Split on right and on below
"More natural
"Use :r and :b
set splitright
set splitbelow
cabbrev r split
cabbrev b vsplit

"Search
"Search as you type
"Highlight results
"Smart case
"Use qq to remove the highlight
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap & :nohl<CR>

"Avoid useless redraw
set lazyredraw

"Ignore some extensions in wildmenu
set wildignore+=*.so,*.o,*.swp

"Toggle zen mode
nnoremap <leader>z :Goyo<CR>

"Remap escape
inoremap jj <Esc>

"Insert just one character
:nnoremap <leader>i i<Space><Esc>r
:nnoremap <leader>a a<Space><Esc>r

"Remap page moves
"Avoid scrolling one line by one line
noremap <C-J> }
noremap <C-K> {

"Syntax processing
syntax on

"Buffers integration
"Buffers can be hidden but still alive
"Limit buffer history for speed
"Switch buffers by using ctrl+h/l
set hidden
set history=500
nnoremap <C-H> :bprev<CR>
nnoremap <C-L> :bnext<CR>

"Identation
"2 spaces indentations
filetype plugin indent on
syntax enable
set nosmartindent
set cindent
set shiftwidth=2
set list
set expandtab
set listchars=tab:..,trail:~

"Remap save and quit
nnoremap qq :x<CR>

"Show matching chars
"Like () or {}
set showmatch

"Signcolumns
"Avoid any unwanted background
set signcolumn=yes
hi clear SignColumn

"And set right Ale colors
high ALEErrorSign guibg=NONE guifg=red
high ALEWarningSign guibg=NONE guifg=orange

"Status line
"Always show statusline
"Hide the mode indicator as it is built in Airline
"Hide command while typing
set laststatus=2
set noshowmode
set noshowcmd

"Ale signs
let g:ale_set_highlights=0
let g:ale_sign_error='→ '
let g:ale_sign_warning='→ '

"Linters to use
"If nothing is precised, the default linters are used
let g:ale_linters={
      \'javascript': ['eslint'],
      \'c': ['clang'],
      \'cpp': ['clang'],
      \}

"Ale C/C++ linting
"Use basic flags
"More specific flags should be provided on a project basis
"by using a local .nvimrc at projet root re-exporting these variables
let g:ale_c_clang_options='-Wall -Wextra -Wshadow --std=gnu11 -O0'
let g:ale_cpp_clang_options='-Wall -Wextra -Wshadow --std=gnu++17 -O0'

"Ale Python linting
"Override python.vim defaults
"Ignored rules are for 2 spaces indenting and spaces around arithmetic operators
let g:python_recommended_style=0
let g:ale_python_flake8_options='--ignore E111,E114,E226'

"Airline
"Airline is the statusbar framework
"Set a matching colorscheme
"Do not use powerline
"Disable Git tracking
"Mode, Ale errors, Ale warnings, filename
"syntax, file position
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#buffer_min_count=2
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#default#layout=[
      \ [ 'a', 'error', 'warning', 'c' ],
      \ [ 'x', 'z' ]
      \ ]
let g:airline#extensions#hunks#enabled=0
let g:airline_section_z=airline#section#create(['%l/%L'])
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline#extensions#tabline#right_alt_sep=''
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#ale#error_symbol='✗ '
let g:airline#extensions#ale#warning_symbol='✝ '
let g:airline#extensions#ale#show_line_numbers=0
let g:airline#extensions#tagbar#enabled=0
let g:airline_symbols.readonly='🔒'
let g:airline_symbols.linenr=''
let g:airline_symbols.maxlinenr=''
let g:airline_symbols.branch=''


"FZF
"FZF is the fuzzy finder
"Define some shortcuts
"Choose a layout
"Get the good colors
"Hide the statusline when in FZF
noremap ff :FZF <CR>
let g:fzf_action={
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }
let g:fzf_layout={ 'down': '~30%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'Normal', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"And also the grepper
"Install ag because it is good
nnoremap <Leader>h :Ag<CR>

"And also the buffer switcher
noremap <Leader>j :Buffers <CR>

"And also the commit explorer
noremap <Leader>k :Commits <CR>
noremap <Leader>K :BCommits <CR>

"Nerdtree
let g:closetag_close_shortcut = '<leader>>'

"Ignore object and tmp ~files
noremap <Leader>t :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeIgnore=['\.o$', '\~$']

"Run python file
autocmd FileType python nnoremap <buffer> <F10> :w <CR> :exec '!python' shellescape(@%, 1)<CR>

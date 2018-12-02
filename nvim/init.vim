"Plugins
"Managed via vim-plug
"Use :PlugInstall / :PlugClean
"Use :PlugUpdate / :PlugUpgrade
call plug#begin('~/.vim/plugged')
" Some colorscheme
Plug 'dracula/vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

"Status bar
Plug 'vim-airline/vim-airline'

"Automatic symbols completion
"File explorer
"Quick rename
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'danro/rename.vim'

"FZF
"Git support
Plug '$HOME/.fzf'
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

"Python autocompletion
Plug 'davidhalter/jedi-vim'

"Python
autocmd FileType python nnoremap <buffer> <F10> :w <CR> :exec '!python' shellescape(@%, 1)<CR>

"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetsDir = ["/cpp.snippets",
  \ "/python.snippets",
  \ "/java.snippets"
  \ ]
let g:UltiSnipsSnippetDirectories = ["/users/theo/Documents/Java",
  \ "/users/theo/Documents/Python"
  \ ]

"Vim asthetics
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Colors
set termguicolors
colorscheme dracula

"Hide vertical split
autocmd ColorScheme * highlight VertSplit gui=NONE guifg=DarkGray guibg=NONE

"Remap leader
let mapleader=" "

"Change shell (env variable)
"At least for FZF
let $SHELL = '/bin/bash'

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
"Ignore case
"Use qq to remove the highlight
set incsearch
set hlsearch
set ignorecase
nnoremap qq :nohl<CR>

"Jump to error
nnoremap <F9> :ALENext<CR>
nnoremap  <F8> :ALEPrevious<CR>

"Add a new line below in normal mode
nnoremap <CR> O<Esc>j

"Avoid useless redraw
set lazyredraw

"Ignore some extensions in wildmenu
set wildignore+=*.so,*.o,*.swp

"Remap escape
"jj is always near
inoremap jj <Esc>

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

"But still insert tab
inoremap hh <C-V><Tab>

"Just in case I can not find
"these on the keyboard
inoremap ww <
inoremap WW >

"Remap write
"nnoremap s :w<CR>

"Remap quit
nnoremap ee :q<CR>

"Show matching chars
"Like () or {}
set showmatch

"More than 80 chars is bad
"Show a ruller on toggle
"nnoremap cc :let &cc = &cc == '' ? '79' : ''<CR>

"Signcolumns
"Avoid any unwanted background
set signcolumn=yes
hi clear SignColumn

"Status line
"Always show statusline
"Hide the mode indicator as it is built in Airline
"Hide command while typing
set laststatus=2
set noshowmode
set noshowcmd

"Quickfix colors
"Hide this ugly yellow
hi QuickFixLine gui=None guibg=None guifg=None

"Ale signs
let g:ale_set_highlights=0
let g:ale_sign_error='→ '
let g:ale_sign_warning='→ '

"Ale signs color
hi todo guibg=None guifg=Orange

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
"Ignored rules are for 2 spaces indenting
let g:python_recommended_style=0
let g:ale_python_flake8_options='--ignore E111,E114'
"E121,E128

"Airline
"Airline is the statusbar framework
"Set a matching colorscheme
"Do not use powerline
"Disable Git tracking
"Mode, Ale errors, Ale warnings, filename
"syntax, file position
let g:airline_theme='dracula'
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
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''

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

"And also the grepper
"Install ag because it is good
nnoremap <Leader>h :Ag<CR>

"And also the buffer switcher
noremap <Leader>j :Buffers <CR>

"And also the commit explorer
noremap <Leader>k :Commits <CR>
noremap <Leader>K :BCommits <CR>

"Nerdtree
"Ignore object and tmp ~files
nnoremap tt :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeIgnore=['\.o$', '\~$']

"Enable project specific stuff
"This is provided using a local .nvimrc
"Secure avoid loading dangerous stuff
set exrc
set secure

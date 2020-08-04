"Plugins
"Use :PlugInstall / :PlugClean
"Use :PlugUpdate / :PlugUpgrade
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree' "File explorer
Plug 'danro/rename.vim' "Quick rename
Plug 'vim-scripts/mru.vim' "MRU

Plug 'chaoren/vim-wordmotion' "Camel/Snake case motion
Plug 'michaeljsmith/vim-indent-object' "Indent object
Plug 'tpope/vim-surround' "Surrondings
Plug 'tpope/vim-commentary' "Comment toggle

Plug 'haishanh/night-owl.vim' "Colorscheme
Plug 'sheerun/vim-polyglot' "Languages support
Plug 'editorconfig/editorconfig-vim' "EditorConfig support
Plug 'w0rp/ale' "Linting

"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"Completion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-jedi'

call plug#end()

"Colors
set termguicolors
colorscheme night-owl

"Remap leader
let mapleader=" "

"Camel/Snake case motion
let g:wordmotion_prefix = '<Leader>'
let g:wordmotion_spaces = '_-'

"Split on right and on below
set splitright
set splitbelow
nnoremap <silent> <Leader>b :split<CR>
nnoremap <silent> <Leader>r :vsplit<CR>

"Search
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <silent> & :nohl<CR>

"Allow to move cursor freely
set virtualedit=all

"Avoid useless redraw
set lazyredraw

"Ignore some extensions in wildmenu
set wildignore+=*.so,*.o,*.swp

"Time waited for key press(es) to complete
set ttimeout
set ttimeoutlen=50

"Remap page moves
noremap <C-J> }
noremap <C-K> {

"Buffers integration
set hidden
set history=500
nnoremap <silent> <C-H> :bprev<CR>
nnoremap <silent> <C-L> :bnext<CR>

"Identation
filetype plugin indent on
syntax enable
set nosmartindent
set cindent
set shiftwidth=4
set softtabstop=4
set expandtab
set list
"set listchars=tab:>-,trail:\u00b7
let &listchars="tab:\u2192 ,extends:>,precedes:<,trail:~"

"Remap save and quit
nnoremap <silent> Q :x<CR>

"Show matching chars
"Like () or {}
set showmatch

"Markdown syntax
let g:vim_markdown_frontmatter=1

"Cleaner vertical split
hi VertSplit ctermbg=NONE ctermfg=233

"Ale signs
set signcolumn=yes
hi clear SignColumn
hi ALEErrorSign guibg=NONE guifg=red
hi ALEWarningSign guibg=NONE guifg=orange

"Ale signs
let g:ale_set_highlights=0
let g:ale_sign_error='→ '
let g:ale_sign_warning='→ '

let g:ale_linters={
      \'javascript': ['eslint'],
      \'c': ['clang'],
      \'cpp': ['clang'],
      \'python': ['flake8'],
      \}

let g:ale_fixers = {
    \'*': ['remove_trailing_lines', 'trim_whitespace'],
    \'python': ['isort', 'black'],
    \'elixir': ['mix_format'],
    \'go': ['gofmt', 'goimports'],
    \'haskell': ['ormolu'],
    \}

cnoreabbrev f ALEFix

"Ale C/C++ linting
let g:ale_c_clang_options='-Wall -Wextra -Wshadow --std=gnu11 -O0'
let g:ale_cpp_clang_options='-Wall -Wextra -Wshadow --std=gnu++17 -O0'

"Override python.vim defaults
let g:python_recommended_style=0

"Hide the mode indicator as it is built in Airline
"Hide command while typing
"Cleaner UI
set laststatus=2
set noshowmode
set noshowcmd
set shortmess+=WI

"Airline
let g:airline_theme='night_owl'
let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#buffer_min_count=2
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#default#layout=[
      \ [ 'a', 'error', 'warning', 'c' ],
      \ [ 'x', 'z' ]
      \ ]
let g:airline#extensions#hunks#enabled=0
let g:airline_section_z=airline#section#create(['%3l/%L:%-2c'])
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
noremap <silent> <leader>f :FZF <CR>
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

"ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

"The silver searcher
nnoremap <silent> <Leader>h :Ag<CR>

"Nerdtree
noremap <silent> <Leader>t :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeIgnore=['\.o$', '\.pyc$', '__pycache__']
let NERDTreeStatusline=""

"Run python file
autocmd FileType python nnoremap <buffer> <F10> :w <CR> :exec '!python3' shellescape(@%, 1)<CR>

"Sort lines by lengh
function! SortLines() range
    execute a:firstline . "," . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
    execute a:firstline . "," . a:lastline . 'sort! n'
    execute a:firstline . "," . a:lastline . 's/^\d\+\s//'
endfunction

command -range -nargs=0 Lsort :<line1>,<line2>call SortLines()

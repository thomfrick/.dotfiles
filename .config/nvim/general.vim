"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File and Buffer Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                " Use all new vim functionalities
set hidden                      " Do not close the buffers, hide them
set history=1000                " Remember more commands and search history
set undolevels=1000             " Remember more levels of undo
set noerrorbells                " No buzz on error
set novisualbell                " No 'visual buzz' on error
set autoread                    " Reload the file if changed from the outside
set switchbuf=useopen           " if opening a file from :ls, :buffers, :files, etc. jump to open version
                               "" of the file, if one exists
set confirm                     " dialog foor unsaved changes
set splitright                  " got to right pane by default (Needed for quickmenu)

" Terminal/GUI setup
set encoding=utf-8                " Fix encoding shit...
set mouse=a                       " Use mouse when using vim (tip: maj during
                                  "" selection to use ctrl-maj-c to copy
                                  "" text)
" smooth redraw
set lazyredraw

" Show keys in status
set showcmd

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" Indentation
"""""""""""""""""""""""""""""""""""""""
" Global configuration
set expandtab                     " Transform kitten killer tabs to spaces
set tabstop=4                     " Number of visual spaces per tab
set shiftwidth=4                  " Number of spaces to use for autoindent
set backspace=indent,eol,start    " Allow backspacing over everything in
set textwidth=120
"" insert mode
set softtabstop=0

set autoindent                    " Always set autoindent on
set copyindent                    " Copy the previous indentation on autoindent
set shiftround                    " Use n shiftwidth when indenting with <>
set smarttab                      " Use smart removal when using tabs
set nojoinspaces                  " When joining lines that end with '.', '?' or '!', ' '
                                  "" only insert one space, not two

"highlight OverLength ctermbg=black ctermfg=white guibg=#FFD9D9

" Trailing / tabs
set showbreak=↪\ 
set list
set listchars=tab:→\
set listchars+=nbsp:␣
set listchars+=trail:·
set listchars+=extends:⟩
set listchars+=precedes:⟨

" Display and search configuration
"""""""""""""""""""""""""""""""""""""""
set shortmess=a                 " Deal with messages
set nowrap                        " No new line when the line is too long
set showmatch                     " Show matching parenthesis
set ignorecase                    " Basically, ignore case when searching...
set smartcase                     " ...but be smart on the case when searching
set hlsearch                      " Highlight search matches as you type
set incsearch                     " Show search matches as you type
set ruler                         " Display the current cursor position
set ignorecase
set smartcase

" Readability
"""""""""""""""""""""""""""""""""""""""
syntax on
set number                        " Always show line number
set cursorline                    " Change the current line background
set scrolloff=8                   " Keep 8 line above and under the current one

" Cursor
"""""""""""""""""""""""""""""""""""""""
" Show cursorline only for active window
augroup cline
   "au!
   "au WinLeave,InsertEnter * set nocursorline
   "au WinEnter,InsertLeave * set cursorline
augroup END

" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
"syntax on
set background=dark
colorscheme vim-material
hi Normal guibg=NONE ctermbg=NONE


if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

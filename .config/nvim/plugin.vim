
call plug#begin('~/.vim/plugged')

" Status line
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"{{{
    " Vim Airline
    let g:airline_theme = "material"
    let g:airline#extensions#neomake#enabled = 1
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline_skip_empty_sections = 1
    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
       let g:airline_symbols = {}
    endif

    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.whitespace = 'Ξ'
    set fillchars+=stl:\ ,stlnc:\
"}}}

" Theme
Plug 'hzchirs/vim-material'
""{{{
let g:material_style='palenight'
""}}}

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

" File Browser
Plug 'scrooloose/nerdtree'
"{{{
"" NERDTree configuration
    let g:NERDTreeChDirMode=2
    let g:NERDTreeShowHidden=1
    let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
    let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
    let g:NERDTreeShowBookmarks=1
    let g:nerdtree_tabs_focus_on_files=1
    let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
    let g:NERDTreeWinSize = 50
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
    let NERDTreeMinimalUI = 1
"}}}

" TagBar
Plug 'majutsushi/tagbar'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Brackets
Plug 'Raimondi/delimitMate'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Syntax highliting
Plug 'sheerun/vim-polyglot'

" SpellChecking
Plug 'rhysd/vim-grammarous'


Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" latex
Plug 'lervag/vimtex'

" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"use patched unicode symbols from nerd fonts, needs to load last!
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

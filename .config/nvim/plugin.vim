
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
"Plug 'romainl/Apprentice', { 'branch': 'fancylines-and-neovim' }
Plug 'hzchirs/vim-material'
""{{{
let g:material_style='palenight'
""}}}

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
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

" Linting
"Plug 'neomake/neomake'
"" {{{
    "let g:neomake_open_list = 2
    "" neomake is async => it doesn't block the editor
    "" It's a syntastic alternative. Syntastic was slow for me on python files.
    "" $ sudo pip2/pip3 install flake8 -U
    "" $ sudo pip2/pip3 install vulture -U
    "let g:neomake_python_enabled_makers = ['flake8', "python"]
    "" let g:neomake_python_enabled_makers = ['flake8', 'pep8']
    "" E501 is line length of 80 characters
    "let g:neomake_python_flake8_maker = { 'args': ['--ignore=E115,E266,E501'], }
    "let g:neomake_python_pep8_maker = { 'args': ['--max-line-length=120', '--ignore=E115,E266'], }
 
    "" run neomake on the current file on every write:
    "autocmd! BufWritePost * Neomake
"" }}}

"" Formatting
"Plug 'sbdchd/neoformat'

Plug 'w0rp/ale'
"{{{
    " Set this. Airline will handle the rest.
    let g:airline#extensions#ale#enabled = 1
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_enter = 0
"}}}


" Auto Completion
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/deoplete-clangx'

" latex
Plug 'lervag/vimtex'

" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"{{{
    
"}}}

"use patched unicode symbols from nerd fonts, needs to load last!
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

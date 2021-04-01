call plug#begin(stdpath('config') . '/plugged')

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'vim-scripts/xoria256.vim'
Plug 'kien/rainbow_parentheses.vim'

" Misc language plugins
Plug 'sheerun/vim-polyglot'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Code formatting
Plug 'chiel92/vim-autoformat'
Plug 'tpope/vim-surround'

" Ubiquitous repeats
Plug 'tpope/vim-repeat'

" Change directory automatically
Plug 'airblade/vim-rooter'

" Misc convenience
Plug 'tpope/vim-sensible'
Plug 'adelarsq/vim-matchit'

call plug#end()


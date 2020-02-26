call plug#begin(stdpath('config') . '/plugged')

" My plugins
" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'mswift42/vim-themes'
Plug 'vim-scripts/xoria256.vim'
Plug 'jaredgorski/SpaceCamp'
Plug 'nanotech/jellybeans.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'itchyny/landscape.vim'

Plug 'kien/rainbow_parentheses.vim'

" Colorscheme switching
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'Taverius/vim-colorscheme-manager'

" Make LSP stuff a bit nicer
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'

" Async Lint Engine - syntax checking & semantics errors
Plug 'w0rp/ale'

" LSP client
Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh',
	\ }

" Misc language plugins
Plug 'sheerun/vim-polyglot'

" Fuzzy finder
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Code formatting
Plug 'chiel92/vim-autoformat'
Plug 'tpope/vim-surround'

" Ubiquitous repeats
Plug 'tpope/vim-repeat'

" Whitespace stuff
Plug 'ntpeters/vim-better-whitespace'

" Change directory automatically
Plug 'airblade/vim-rooter'

call plug#end()


" something to do with detecting file type for syntax highlighting
filetype plugin indent on
if !exists("g:syntax_on") "set syntax highlighting if not already set"
    syntax enable
endif

" disable mouse
set mouse=

" make whitespace easier to see
set list
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵

" set clipboard to use + register (ctrl+v ctrl+c)
set clipboard=unnamedplus

" turn hybrid line numbers on
set number relativenumber

" use 4 spaces instead of tab
set ai ts=4 expandtab

" set width to 4 spaces, prevents double tab insertion
set shiftwidth=4

" colors!
colorscheme xoria256
let g:airline_theme='fruit_punch'

" netrw
let g:netrw_liststyle=3

" Language plugins
let g:sql_type_default = 'pgsql'

" LSP stuff
set cmdheight=2
set signcolumn=yes
let g:LanguageClient_autoStart = 1
let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

let g:LanguageClient_serverCommands = {
    \ 'ruby': ['$HOME/.rvm/gems/ruby-head/bin/solargraph'],
    \ 'java': ['/usr/local/bin/jdtls', '-data', getcwd()],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'typescript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'vue': ['/usr/local/bin/vls'],
    \ 'crystal': ['$HOME/Dev/scry/bin/scry'],
    \ 'go': ['$HOME/Dev/go/bin/go-langserver']
    \ }


" something to do with detecting file type for syntax highlighting
filetype plugin indent on
if !exists("g:syntax_on") "set syntax highlighting if not already set"
    syntax enable
endif

" make whitespace easier to see
set list
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵

" set clipboard to use + register (ctrl+v ctrl+c)
set clipboard=unnamedplus

"-----Convenience-----"
" show current mode
" don't need this with airline
"set showmode

" turn hybrid line numbers on
set number relativenumber

" use 4 spaces instead of tab
set ai ts=4 expandtab

" set width to 4 spaces, prevents double tab insertion
set shiftwidth=4

" LSP stuff
let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

let g:LanguageClient_serverCommands = {
    \ 'ruby': ['solargraph'],
    \ }
    "\ 'java': ['/usr/local/bin/jdtls', '-data', getcwd()],

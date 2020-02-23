" set <Leader> key to spacebar
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

" remap chord combo for window shortcuts
nmap <Leader>w <c-w>
nmap <Leader>wd :q<CR>

" buffer convenience
nmap <Leader>bn :bnext<CR>
nmap <Leader>bp :bprevious<CR>
nmap <Leader>bd :bprevious\|bdelete #<CR>
nmap <Leader>bb :Buffers<CR>

" tab convenience
nmap <Leader>tn :tabnext<CR>
nmap <Leader>tp :tabprevious<CR>
nmap <Leader>tN :tabnew<CR>
nmap <Leader>td :tabclose<CR>

" Ctags :D
nmap <Leader>ct :Tags<CR>

" files
nmap <Leader>ff :Files<CR>

" toggle line numbers to make copying easier
nmap <Leader>ln :set invnumber invrelativenumber<CR>

" MYVIMRC stuff
nmap <Leader>eb :vsp $MYVIMRC<CR>
nmap <Leader>er :source $MYVIMRC<CR>

" search my available commands
nmap <Leader><Leader> :Commands<CR>

" Disable arrow keys completely?
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" vanity colour scheme stuff
nmap <F7> :RandomColorScheme<CR>
" F8 already does :NextColorSchene<CR>
" S-F8 already does :PrevColorSchene<CR>
" F9 already does :BlacklistAddColorScheme<CR>

" LSP mappings
nnoremap <F5> :call LanguageClient_contextMenu()<CR>


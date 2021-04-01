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
nmap <Leader>tt :tabnew<CR>
nmap <Leader>td :tabclose<CR>

" search my available commands
nmap <Leader><Leader> :Commands<CR>

" Disable arrow keys completely
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

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

" Ctags :D
nmap <Leader>T :Tags<CR>

" file stuff
nmap <Leader>fl :Ex<CR>
nmap <Leader>fd :cd %:h<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>fr :Ntree 

" editor mappings
nmap <Leader>en :set invnumber invrelativenumber<CR>

" vim mappings
nmap <Leader>ve :vsp $MYVIMRC<CR>
nmap <Leader>vr :source $MYVIMRC<CR>

" Show me my mappings
nmap <Leader>mM :Maps<CR>'space>
nmap <Leader>mb :Maps<CR>'space>b
nmap <Leader>me :Maps<CR>'space>e
nmap <Leader>mf :Maps<CR>'space>f
nmap <Leader>ml :Maps<CR>'space>l
nmap <Leader>mt :Maps<CR>'space>t
nmap <Leader>mT :Maps<CR>'space>T
nmap <Leader>mv :Maps<CR>'space>v
nmap <Leader>mw :Maps<CR>'space>w

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

" vanity colour scheme stuff
nmap <F7> :RandomColorScheme<CR>
" F8 already does :NextColorSchene<CR>
" S-F8 already does :PrevColorSchene<CR>
" F9 already does :BlacklistAddColorScheme<CR>

" deoplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" LSP mappings
nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <leader>ll :call LanguageClient_contextMenu()<CR>

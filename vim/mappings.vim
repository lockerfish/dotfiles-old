" using dictionary.app
nmap <silent> <leader>d :!open dict://<cword><CR><CR>
" command
nnoremap ;; :
"map! ii <esc>
nnoremap ;' :q<cr>
nnoremap ss :w<cr>

" clear search results
nnoremap <silent> <leader><space> :noh<cr>

" reload configuration
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
" edit configuration
nnoremap <leader>e :e ~/.config/nvim/init.vim<CR>

" toggle fold
" nnoremap <Tab> za

" Tab
"
" new tab
nnoremap <leader>t <Esc>:tabnew<CR>

" Flutter 
"
nnoremap <tab>t :!flutter test<cr>
nnoremap <tab>a :!flutter analyze \| grep 'error'<cr>
nnoremap <tab>p :!flutter pub upgrade<cr>
nnoremap <tab>r :!flutter pub run build_runner build --delete-conflicting-outputs<cr>

" quickfix mapping, nextfile jumps
"nnoremap <silent> <Up> :cprevious<CR>
"nnoremap <silent> <Down> :cnext<CR>
"nnoremap <silent> <Left> :cpfile<CR>
"nnoremap <silent> <Right> :cnfile<CR>

" Save
inoremap <C-s> <C-O>:update<cr>
nnoremap <C-s> :update<cr>

" Quit
inoremap <C-Q> <esc>:q<cr>
nnoremap <C-Q> :q<cr>
vnoremap <C-Q> <esc>:q<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

nnoremap <leader>s :Snippets<CR>
nmap <leader>se :UltiSnipsEdit<CR>

" project
"nnoremap <silent> <leader>pt :NERDTreeToggle<CR>   " open a horizontal split and switch to it (,h)
nnoremap <silent> <leader>ff :NERDTreeFind<CR>   " open a horizontal split and switch to it (,h)
"nnoremap <leader>pf :GitFiles<CR>
nnoremap <leader>/ :Rg 
nnoremap <leader>p/ :CocSearch 
nnoremap <leader>h :History<CR>
nnoremap <leader>c :Commands<CR>

" file
nnoremap <leader>f :Files<CR>
nnoremap <leader>ft :TagbarToggle<CR>

" buffer
nnoremap <Leader><Tab> :e#<CR> " switch to last buffer
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bl :BLines<CR>
nnoremap <leader>bL :Lines<CR>

" toggles
noremap <Leader>ti :set list!<CR>:echo 'Toggled special characters'<CR>" Toggle special characters
noremap <Leader>tl :set relativenumber!<CR>:echo 'Toggled relative line numbers'<CR>" Toggle relative line numbers

" git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :GV<CR>
nnoremap <leader>gm :Gmerge<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gvc :GV!<CR>
nnoremap <leader>gvq :GV?<CR>
nnoremap <leader>gw :Gwrite<CR>

" Terminal stuff
:tnoremap <Esc> <C-\><C-n>

" create jumplist entry for j and k jumps with more than 1 line
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

" gui rebindings for auto pairs
imap <D-e> <M-e>
imap <D-p> <M-p>
imap <D-m> <M-m>
imap <D-e> <M-e>
imap <D-b> <M-b>

" fzf
imap <c-x><c-l> <plug>(fzf-complete-line)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-k> <plug>(fzf-complete-word)

" gitmoji
inoremap <expr> <C-X><C-E> gitmoji#complete()

nnoremap <C-p> :pc<CR>

" Move single line * vim-unimpaired
nmap <c-s-k> [e
nmap <c-s-j> ]e
"
" Move multiple lines
vmap <c-s-k> [egv
vmap <c-s-j> ]egv

" vim-sneak search
map s <Plug>Sneak_s
map S <Plug>Sneak_S

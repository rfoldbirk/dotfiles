" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
inoremap <C-b> <Esc>:w<CR>:!xdotool search -name "Alacritty - Main" key ctrl+c ctrl+l m a k e space r u n Return<CR><CR>
nnoremap <C-b> <Esc>:!xdotool search -name "Alacritty - Main" key ctrl+c ctrl+l m a k e space r u n Return<CR><CR>
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-w> :close<CR>
nnoremap <C-q> :qa!<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

nnoremap <Leader>e :edit .<CR>
nnoremap <Leader>w :b <CR>
nnoremap <Leader>q <C-t>
nnoremap <Leader>m :MakeTags<CR><CR>

map <Leader>p <ESC>:w<CR><C-l>a python3 main.py<CR>
map <Leader>t <ESC>:set autoindent noexpandtab tabstop=4 shiftwidth=4<CR>
" Scrolling og desværre også musseklik :(
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Side bar
map <C-k> <Esc>:edit .<CR>/main<CR>v:vertical resize +100<CR>:vertical resize -22<CR>:noh<CR>
" Align side bar
map <Leader>a :vertical resize +100<CR>:vertical resize -22<CR>:noh<CR>
" Søg i alle filer
map <C-f> :find ./

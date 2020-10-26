" Plug installation & setup
call plug#begin('/home/ivan/Dropbox/vim/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'fatih/vim-go'
Plug 'vim-vdebug/vdebug'
Plug 'itchyny/lightline.vim'
Plug 'StanAngeloff/php.vim'
Plug 'neomake/neomake'
Plug 'mhinz/vim-signify'

call plug#end()

" Emmet shortcut TAB
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Set read
set autoread

" Enable mouse movement
set mouse=a 

" Enable ttymouse to enable copy paste
" set ttymouse=xterm2

" Enable ctrl+hjkl navigation in INSERT and COMMAND mode 
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>
" cnoremap <C-h> <Left>
" cnoremap <C-j> <Down>
" cnoremap <C-k> <Up>
" cnoremap <C-l> <Right>


" Line number setup
set number
" set relativenumber
set noswapfile
set syntax=on

" Tab left, tab right bindings
nnoremap H gT
nnoremap L gt

" Setting leader to space (for tab navigation space+number key)
map <Space> <Leader>

" Set leader to shuffle tabs (file-nerdtree quick) 
map <leader>w <C-W>w

" Wrap left and right cursor to prev/next line
set whichwrap+=<,>,h,l,[,]

" Shortcut for saving CTRL + S
" Remember to add the following to .bashrc (uncommented, ofc):
" bind -r '\C-s'
" stty -ixon 
nnoremap <c-s> :w<CR> " normal mode: save
inoremap <c-s> <Esc>:w<CR>l " insert mode: escape to normal and save
vnoremap <c-s> <Esc>:w<CR> " visual mode: escape to normal and save

" ----------- PLUGIN-SPECIFIC -----------"

" Open NERDTree
autocmd vimenter * NERDTree

" NERDTree Config
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
let NERDTreeShowLineNumbers=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeWinSize=40 
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_new_tab=1

let g:NERDTreeMouseMode=2

" Nerdtree related bindings
" Numbered bindings
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" XDebug
let g:vdebug_options = {'ide_key': 'netbeans-xdebug'}
let g:vdebug_options = {'break_on_open': 0}
let g:vdebug_options = {'server': '127.0.0.1'}
let g:vdebug_options = {'port': '10000'}


" AutoPairs config
let g:AutoPairs={'{':'}'}

" Lightline
set laststatus=2

" To enable colors
"if !has('gui_running')
"  set t_Co=256
"endif

let g:lightline = {'colorscheme': 'seoul256'}

" Neomake
let g:neomake_open_list = 2

" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

" Signify / mercurial
let g:signify_vcs_list              = [ 'hg' ]
let g:signify_cursorhold_insert     = 1
let g:signify_cursorhold_normal     = 1
let g:signify_update_on_bufenter    = 0
let g:signify_update_on_focusgained = 1

nnoremap <leader>gt :SignifyToggle<CR>
nnoremap <leader>gh :SignifyToggleHighlight<CR>
nnoremap <leader>gr :SignifyRefresh<CR>
nnoremap <leader>gd :SignifyDebug<CR>

" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)

" CTags
set tags=/var/www/projects/tags



if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set mouse=a

set nocompatible              " be iMproved, required
call plug#begin('~/.vim/plugged')

set noswapfile
set nobackup
set nowritebackup

let mapleader=','

" Go to tab by number
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

set background=dark
if has("termguicolors")
  set termguicolors
endif

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

set ttimeout
set ttimeoutlen=10
set matchtime=0
" Make sure you use single quotes
"
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'nanotech/jellybeans.vim'


" On-demand loading
"
Plug 'scrooloose/nerdtree', {'on':  ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'jistr/vim-nerdtree-tabs'

nmap <silent> <leader>n :NERDTreeTabsToggle<CR>
noremap <Leader>r :NERDTreeFind<CR>

let g:NERDTreeMapOpenVSplit='v'      " keep mappings between ctrlp and nerdtree concise
let NERDTreeIgnore=['\.pyc$', '\~$'] " Ignore irrelevant files like pyc and swap files
set guioptions-=L                    " Hide nerdtree's window scrollbar on macvim
" Start NERDTree
autocmd VimEnter * NERDTreeToggle
" Jump to the main window.
autocmd VimEnter * wincmd p
" Start NERDTree Tabs automatically "
let g:nerdtree_tabs_open_on_console_startup = 1

Plug 'davidhalter/jedi-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim' 
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'             " Syntax check
Plug 'rizzatti/dash.vim'                " Dash integration
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-endwise'

" ultisnips config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Developer plugins
Plug 'janko-m/vim-test'
" make test commands execute using dispatch.vim
let test#strategy = "neovim"

nmap <silent> <leader>T :TestFile<CR>

Plug 'vim-ruby/vim-ruby'
Plug 'vim-utils/vim-ruby-fold'
Plug 'tpope/vim-rails'

Plug 'godlygeek/tabular'                " must go before vim-instant-markdown
Plug 'plasticboy/vim-markdown' 
" Plug 'suan/vim-instant-markdown'
au BufNewFile,BufRead *.md setlocal filetype=markdown            " Treat .md files as Markdown

Plug 'christoomey/vim-tmux-navigator' " seamless vim/tmux navigation

Plug 'ryanoasis/vim-devicons'
" Window Navigation:
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>


" ###### fonts ######

let g:airline_powerline_fonts = 1 " use powerline fonts
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_theme='bubblegum'   " nice theme
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:webdevicons_enable_nerdtree = 1
" Add plugins to &runtimepath
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

call plug#end()

let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>', '<c-h>'],
      \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*source_maps*,.git,.svn,*/public/assets/*
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|source_maps)$',
      \ 'file': '\v\.(exe|so|dll|pyc)$'
      \ }

map <c-s> :CtrlPTag<CR>

let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
map <Leader>s :CtrlPFunky<CR>

" FZF config
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>

" View commits in fzf
nmap <Leader>c :Commits<cr>

" Don't load ctrlp
let g:loaded_ctrlp = 1


filetype plugin indent on

set autoindent
set complete-=i
set smarttab              " Insert tabs according to 'shiftwidth'
set expandtab
set number                " Use normal numbers
set relativenumber        " and relative line numbers
set backspace=2           " Make backspace work like most other apps
set clipboard=unnamed     " use OS clipboard"
" set clipboard=unnamedplus 
set laststatus=2          " Always show status line (not needed when using airline)
set ruler                 " Show the line and column number of the cursor position
set showcmd               " Show commands as you type them
set wildmenu              " Enhance command-line completion
set wildchar=<TAB>        " Autocomplete commands with tab key
set incsearch             " Highlight dynamically as pattern is typed
set tabstop=2
set shiftwidth=2
set softtabstop=2 

"This unsets the "last search pattern" register by hitting return
nmap <space> :noh<cr>

nmap ,v :vsp $MYVIMRC<cr>
nmap ,i gg=G
nmap <c-p> :FZF<cr>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

colorscheme jellybeans 

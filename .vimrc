"  Base options {{{
"  Base options taken from:
"  Steve Losh https://github.com/sjl/dotfiles/blob/master/vim/vimrc
"  Paul Irish https://github.com/paulirish/dotfiles/blob/master/.vimrc

" Preamble {{{

set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/Projects/dotfiles/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'Glench/Vim-Jinja2-Syntax'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'godlygeek/tabular'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-haml'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'rking/ag.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'gcmt/wildfire.vim'
" It runs without using the flowconfig
"NeoBundle 'flowtype/vim-flow' , {
            "\ 'autoload': {
            "\     'filetypes': 'javascript'
            "\ }}

" Testing out
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-endwise'

call neobundle#end()

syntax on
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" }}}

" Change mapleader
let mapleader=","

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" From https://github.com/sjl/dotfiles/blob/master/vim/vimrc
  " Don't try to highlight lines longer than 800 characters.
  set synmaxcol=800

  " Time out on key codes but not mappings.
  " Basically this makes terminal Vim work sanely.
  set notimeout
  set ttimeout
  set ttimeoutlen=10

  " Source
  vnoremap <leader>S y:execute @@<cr>:echo 'Sourced selection.'<cr>
  nnoremap <leader>S ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>

" mostly from paul irish
" Set some junk
set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set nofoldenable    " disable folding"
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle.
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set magic " Enable extended regexes.
set mouse=a " Enable moouse in all in all modes.
set noerrorbells " Disable error bells.
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set nostartofline " Don't reset cursor to start of line when moving around.
set nowrap " Do not wrap lines.
set nu " Enable line numbers.
set relativenumber
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set report=0 " Show all changes.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shiftwidth=2 " The # of spaces for indenting.
set shortmess=atI " Don't show the intro message when starting vim.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set sidescrolloff=3 " Start scrolling three columns before vertical border of window.
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set undofile " Persistent Undo.
set lazyredraw " Prevent scroll lag
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/comp/*,*/dist/*

set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.
set winminheight=0 "Allow splits to be reduced to a single line.
set wrapscan " Searches wrap around end of file

set exrc    " enable per-directory .vimrc files
set secure  " disable unsafe commands in local .vimrc files"

" Textwrapping {{{
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81
" }}}

" Toggle show tabs and trailing spaces (,c)
set list
set lcs=tab:›\ ,trail:·,nbsp:_
set fcs=fold:-
"set foldmethod=indent
set foldmethod=marker
set foldmarker={{{,}}}

" Indenting {{{
" Stuff for indenting"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround
" }}}
" }}}
" Key mappings stuff {{{
" Leader mappings{{{

" select all
map <Leader>a ggVG

" Insert newline
map <leader><Enter> O<ESC>
map <space><Enter> o<ESC>

" autoindent file
map <leader>= ggVG==

" Change paste setting
map <leader>p :set paste<cr>
map <leader>o :set nopaste<cr>

" Add semi-colon to end of line
map <leader>; $a;<ESC>
map <leader>, $a,<ESC>

" wrap current word
map <leader>' ysiw'
map <leader>" ysiw"
map <leader>{ ysiw{
map <leader>[ ysiw[
map <leader>( ysiw(

"focus mode
map <leader>f :GitGutterToggle<cr>:set nocul<cr>:set numberwidth=7<cr>:highlight LineNr ctermfg=233 ctermbg=233<cr>

"revert focus mode
map <leader>d :GitGutterToggle<cr>:set cul<cr>:set numberwidth=1<cr>:highlight LineNr ctermfg=DarkGrey ctermbg=234<cr>

" Open file in macvim
map <leader>gv :! mvim %<cr>


map <leader>t :set expandtab!<cr>:set tabstop=4<cr>:set shiftwidth=4<cr>
map <leader>s :set expandtab<cr>:set tabstop=2<cr>:set shiftwidth=2<cr>

" }}}
" Space mappings{{{

" Cycle through buffers in the current split
nnoremap <Space>j :bn<CR>
nnoremap <Space>k :bp<CR>

nnoremap <Space>l :CtrlP<CR>

nnoremap <Space>; ci'

" quick shell
nnoremap <Space>t :sh<cr>

" move to end or beggining of line
nnoremap <Space>a ^
nnoremap <Space>f $

nnoremap <Space>9 :vertical resize -5<cr>
nnoremap <Space>0 :vertical resize +5<cr>

" folding
nnoremap <Space>g za

" Run 'a' register macro
nnoremap <Space>s @a
" destroy buffer
nnoremap <Space>d :bd<CR>

nnoremap <Space>b :bd *<C-a><CR>:CtrlP<CR>
"delete block
nnoremap <Space>x da{dd
"quit
nnoremap <Space>q :q<CR>

" rails mappings
nnoremap <space>u :GitGutterNextHunk<cr>
nnoremap <space>i :GitGutterPrevHunk<cr>
nmap <space>p <Plug>GitGutterPreviewHunk

nnoremap <Space>q :q<CR>
"change surrounding quote
map <space>' cs"'
map <space>" cs'"

" }}}
" Plugin mappings {{{

"get new version of this
" only use if js
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" nerdcommenter options
map <Space>c ,c<space>

" nerdcommenter options
map <leader>nt :NERDTree<cr>

" gundo option
nnoremap <leader>gu :GundoToggle<CR>

" }}}
" Assorted keymappings {{{

" Remap :W to :w
command! WQ wq
command! Wq wq
command! W w
command! Q q

map <esc>j <C-W>j
map <esc>k <C-W>k
map <esc>h <C-W>h
map <esc>l <C-W>l

"disable ex mode"
map Q <Nop>

nnoremap j gj
nnoremap k gk

" make Y behave
nnoremap Y y$

" keep visual block selected after indent
vnoremap > >gv
vnoremap < <gv





map <leader>js :set ft=javascript syntax=javascript<Cr>


" save on esc c
map <Esc>s :w<CR>
imap <Esc>s :w<CR>


inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

vnoremap <Tab> 1>
vnoremap <S-Tab> 1<
nnoremap <Tab> >>
nnoremap <S-Tab> <<
" }}}
" }}}
" Colors {{{
"
" Set syntax highlighting options.
set t_Co=256
colorscheme jellybeans
hi CursorLine ctermbg=235
highlight ColorColumn ctermbg=232
hi IndentGuidesOdd ctermbg=236
hi IndentGuidesEven ctermbg=237
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=234
highlight SignColumn ctermbg=234
highlight Normal ctermbg=238
set modifiable
set noswapfile
" }}}
" Plugin config {{{
" NerdTree {{{
"
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let delimitMate_expand_cr = 1

" }}}

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" indent guide options
let indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

" Ack.vim config to use ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" nocomple chache options
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><c-c>  neocomplcache#smart_close_popup()
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" zen coding option
let g:user_emmet_mode='i'
let g:user_emmet_expandabbr_key='jk'
let g:user_emmet_install_global = 1

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']
let g:pyindent_open_paren = '&sw'
let g:pyindent_nested_paren = '&sw'
let g:pyindent_continue = '&sw'

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|__pycache__)|(\.(swp|ico|git|svn|.pyc))$'

map <space>n <Plug>(easymotion-prefix)
" }}}
" Onload {{{
" Disable gvim bell
autocmd! GUIEnter * set vb t_vb=
autocmd VimEnter * :set visualbell!
autocmd VimEnter * :IndentGuidesEnable
" dont know why this is broken
"autocmd VimEnter * :if argc() is 0 | :CtrlP<CR> | endif

au BufEnter * inoremap <expr><s-TAB> pumvisible() ? "\<C-n>" : "<s-TAB>"
highlight NonText ctermfg=blue
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.wjs set filetype=javascript
au BufNewFile,BufRead *.py  set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=80 expandtab
au FocusLost * :silent! wall

"autocmd FileType javascript set formatprg=prettier\ --stdin\ all
"autocmd BufWritePre *.js :normal gggqG
"autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" Run file with node
map <leader>n :call NumberToggle()<cr>

" This prevents weird background stuff with vim and tmux
set t_ut=
" }}}

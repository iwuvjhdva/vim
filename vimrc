" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if has("syntax")
  syntax on
endif

colorscheme djangoslate

set backspace=indent,eol,start
set listchars=tab:˛\ ,trail:┈
set fileencodings=utf-8,cp1251,koi8-r

set autoindent
set textwidth=120
set tabstop=4
set softtabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

set ruler
set number

set showcmd
set showmatch

set hlsearch

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

set guifont=Monospace\ 12
set clipboard=unnamedplus

if has("gui_running") 
    set spell spelllang=en_us
endif

set paste

" Local leader key
let maplocalleader = "\<M-x>"

" Hide certain files in Explore mode
let g:netrw_list_hide = '.pyc,.swp'

" Temporarily disable search highlighting on Space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Quote and unquote words
nnoremap <M-q>" gewi"<Esc>ea"<Esc>
nnoremap <M-q>' gewi'<Esc>ea'<Esc>
nnoremap <M-q>d daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" Execute a python file on F5
map <F5> <Esc>:w<CR>:!python %:p<CR>

" cd to current file's directory
" au   BufEnter *   execute ":lcd " . expand("%:p:h") 

" au FileType html compiler html
" au QuickFixCmdPost make cwindow

" Find and display all TODOs
command TODO :noautocmd vimgrep /TODO/ **/*.py **/*.js **/*.pt **/*.html **/*.css | :cw

" Tabs bindings
nnoremap <M-t>n :tabnew<CR>
nnoremap <M-t>o :tabonly<CR>
nnoremap <M-t>c :tabclose<CR>
nnoremap <M-t>f :tabfirst<CR>
nnoremap <M-t>l :tablast<CR>
nnoremap <M-t>s :tab split<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Loading plugins
source ~/.vim/bundle/ropevim/ropevim.vim

" ropevim key shortcuts
nnoremap <C-c>i :RopeAutoImport<CR>
nnoremap <C-c>r :RopeRename<CR>

" ropevim auto complete
let ropevim_vim_completion = 1
let ropevim_extended_complete = 1
let g:ropevim_autoimport_modules = ["os","transaction","random","hashlib","datetime","decimal","shutil","traceback","django","pyramid.*","selenium.*","lxml","lxml.etree"]

" syntastic
let g:syntastic_check_on_open = 1
" let g:syntastic_auto_loc_list = 1

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_exe='/usr/local/bin/flake8'
" let g:syntastic_python_pyflakes_exe = "~/installed/python/sandbox/bin/pyflakes"

let s:default_includes = [ '.', '..', '/usr/lib/gcc/i486-linux-gnu/4.7/include',
    \ '/usr/local/include', '/usr/lib/gcc/i486-linux-gnu/4.7/include-fixed',
    \ '/usr/include/i386-linux-gnu', '/usr/include', '/usr/include/qt4/QtCore' ]

cmap E<CR> Explore<CR>

" EnhancedCommentify
let g:EnhCommentifyUserBindings = 'yes'

vmap co :call EnhancedCommentify('','guess')<CR>
vmap cc :call EnhancedCommentify('','comment')<CR>
vmap cd :call EnhancedCommentify('','decomment')<CR>
vmap cf :call EnhancedCommentify('','first')<CR>

" taglist
let Tlist_Show_One_File = 1
let Tlist_File_Fold_Auto_Close = 1
" let Tlist_Compact_Format = 1
let Tlist_Show_Menu = 1
nnoremap <silent> tt :TlistToggle<CR>
nnoremap <silent> tc :TlistClose<CR>
nnoremap <silent> tu :TlistUpdate<CR>

" EasyMotion
let g:EasyMotion_leader_key = '<M-w>'

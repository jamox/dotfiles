
if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'vim-ruby/vim-ruby.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'bling/vim-airline'
NeoBundle 'kien/ctrlp.vim' " TODO: make this lazy
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'https://github.com/altercation/vim-colors-solarized.git'
NeoBundle 'lervag/vimtex' " made it slow?
NeoBundle 'jceb/vim-orgmode'
NeoBundle 'tpope/vim-speeddating'
"NeoBundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
NeoBundle 'Valloric/YouCompleteMe', {
            \ 'lazy': 1,
            \ 'augroup': 'youcompletemeStart',
            \ 'autoload': {
            \   'insert': 1,
            \ },
            \ 'build': {
            \     'unix': './install.sh --clang-completer --system-libclang',
            \ },
            \ 'build_commands': 'cmake',
            \ 'disabled': !has('python'),
            \ 'vim_version': '7.3.584',
            \}

NeoBundle 'google/vim-maktaba'
NeoBundle 'google/vim-codefmt'
NeoBundle 'google/vim-glaive'

call neobundle#end()

call glaive#Install()


" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1

set t_Co=256

let g:Powerline_symbols = 'fancy'
let g:airline_theme = 'dark'




"Plugin 'vim-ruby/vim-ruby'
""
"" Basic setup
""
let mapleader = ","
" easier moving between tabs

nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <leader>m :bnext<CR>

" Move to the previous buffer
nmap <leader>n :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

map <Leader>N <esc>:tabprevious<CR>
map <Leader>M <esc>:tabnext<CR>

set history=1000                  " keep 1000 commands and 1000 search patterns in the history
set ruler                         " show line and column number
syntax on                         " turn on syntax highlighting allowing local overrides
set encoding=utf-8                " set default encoding to UTF-8
set showcmd                       " display incomplete commands
set number                        " show line numbers
map Q gq                          " defines the "Q" command to do formatting with the "gq" operator

set clipboard=unnamed

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set softtabstop=2                 " use mix of spaces and tabs
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode
let ruby_space_errors=1
let c_space_errors=1



autocmd BufWritePre * :call <SID>StripWhite()
fun! <SID>StripWhite()
  %s/[ \t]\+$//ge
  %s!^\( \+\)\t!\=StrRepeat("\t", 1 + strlen(submatch(1)) / 8)!ge
endfun


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

set cursorline
set title
set list
set listchars=tab:>-,trail:-,nbsp:%
set nohlsearch
set term=screen-256color


""
"" Searching
""

set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set incsearch   " incremental searching
set hlsearch    " highlight matches with the last used search pattern
nnoremap <CR> :noh<CR><CR>


""
"" File types
""

" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction


set autoindent            " use the indent of the previous line for a newly created line

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
      \ ]
let g:vimtex_complete_close_braces=1


"" Jamo: assume this autocompletes tabs...
""inoremap <lt>/ </<C-X><C-O>
" use real tabs ...
autocmd FileType make set noexpandtab
"autocmd FileType python set noexpandtab
autocmd FileType c set noexpandtab
autocmd FileType cpp set noexpandtab


" Set the Ruby filetype for a number of common Ruby files without .rb
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set filetype=ruby

" Make sure all markdown files have the correct filetype set and setup wrapping
autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()

" Treat JSON files like JavaScript
autocmd BufNewFile,BufRead *.json set filetype=javascript

" Remember last location in file, but not for commit messages.
" see :help last-position-jump
 autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

""
"" Wild settings
""

"set wildmode=list:longest           " list all matches and complete till longest common string

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" " Ignore bundler and sass cache
set wildignore+=*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*


""
"" Backup and swap files
""
set backupdir=~/.vim/tmp/backup/    " where to put backup files.
set directory=~/.vim/tmp/swap/      " where to put swap files.


""
"" Persistent Undo
""
set undofile
set undodir=~/.vim/tmp/undo

""
"" Status line
""
set laststatus=2

set statusline=
set statusline+=\ \[%n]\                     "Buffer number
set statusline+=%<%f\                        "File
set statusline+=%m%r%h%q%w\                  "Modified? Readonly? Help? Quickfix? Preview?
set statusline+=%{SyntasticStatuslineFlag()} "Add syntastic if enabled
set statusline+=%{fugitive#statusline()}\    "Add fugitive if enabled
set statusline+=%y\                          "FileType
set statusline+=[%{&fenc!=''?&fenc:&enc}     "Encoding
set statusline+=%{(&bomb?',bom':'')}]\       "Encoding2
set statusline+=[%{&ff}]\                    "FileFormat
set statusline+=%=\ Line:%l/%L\ (%p%%)\ \    "Line/total (%)
set statusline+=Column:%c\                   "Column


""
"" NERDTree
""

let g:NERDTreeStatusline = ' '
map <Leader>B :NERDTreeToggle<CR>
map <Leader>b :NERDTreeToggle<CR>


""
"" Taglist
""

map <Leader>t :TlistToggle<CR>


""
"" GitGutter
""
let g:gitgutter_eager = 0
" My own stuff

"map <Leader>l <c-]>
"map <Leader>k <c-T>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

imap jj <Esc>

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
cnoremap sudow w !sudo tee % >/dev/null



"" To move between buffers w/o saving 'em
set hidden










if 0 | endif

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-rails'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim' " TODO: make this lazy
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'mileszs/ack.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'google/vim-maktaba'
"Plug 'google/vim-codefmt'
"Plug 'google/vim-glaive'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'lervag/vimtex'
Plug 'thoughtbot/vim-rspec'
Plug 'derekwyatt/vim-scala'
Plug 'Shougo/deoplete.nvim'
Plug 'editorconfig/editorconfig-vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()

if &compatible
  set nocompatible               " Be iMproved
endif

filetype plugin indent on


set t_Co=256

let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1


let g:Powerline_symbols = 'fancy'
let g:airline_theme = 'solarized' "'dark'
let g:airline_detect_paste=1

"autocmd FileType ruby compiler ruby

" autocmd FileType ruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_use_bundler = 1
"
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

set scrolloff=10
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
if !has('nvim')
  set term=screen-256color
endif


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

let g:syntastic_javascript_checkers = ['eslint']
"
let g:javascript_enable_domhtmlcss = 1

"let g:ycm_semantic_triggers =  {
"  \   'c' : ['->', '.'],
"  \   'cpp,objcpp' : ['->', '.', '::'],
"  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"  \   'ruby' : ['.', '::'],
"  \   'tex' :  ['re!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*']
"  \ }

let g:vimtex_complete_close_braces=1
let g:vimtex_complete_enabled=0

let g:deoplete#enable_at_startup = 1
" Use smartcase.
let g:deoplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:deoplete#sources#syntax#min_keyword_length = 3
let g:deoplete#lock_buffer_name_pattern = '\*ku\*'


"autocmd FileType python set noexpandtab
autocmd FileType c set noexpandtab
autocmd FileType cpp set noexpandtab


" Set the Ruby filetype for a number of common Ruby files without .rb
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set filetype=ruby

" Make sure all markdown files have the correct filetype set and setup wrapping
autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown "| call s:setupWrapping()

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
let g:solarized_termtrans=1
colorscheme solarized


cnoremap sudow w !sudo tee % >/dev/null



"" To move between buffers w/o saving 'em
set hidden
set magic

" Breaks vim-ruby
" TODO
let g:EclimCompletionMethod = 'omnifunc'
let g:EclimRubyValidate = 0

autocmd BufNewFile *.java call InsertJavaPackage()

function! InsertJavaPackage()
  let filename = expand("%")
  let filename = substitute(filename, "\.java$", "", "")
  let dir = getcwd() . "/" . filename
  "" TODO: get the test and main substitutions on same line
  let dir = substitute(dir, "^.*\/src\/test\/java\/", "", "")
  let dir = substitute(dir, "^.*\/src\/main\/java\/", "", "")
  let dir = substitute(dir, "\/[^\/]*$", "", "")
  let dir = substitute(dir, "\/", ".", "g")
  let filename = substitute(filename, "^.*\/", "", "")
  let dir = "package " . dir . ";"
  let result = append(0, dir)
  let result = append(1, "")
  let result = append(2, "class " . filename . " {")
  let result = append(4, "}")
endfunction

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm2"



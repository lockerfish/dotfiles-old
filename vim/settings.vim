scriptencoding utf-8

set termguicolors
set background=dark
colo onedark

let mapleader = ','
let maplocalleader = ','

syntax on
set laststatus=2                    " keep last status, useful for function signatures
set noshowmode                      " don't display insert/normal/visual mode, we have a status line for that
set tabstop=2                            " number of spaces for a tab
set expandtab
set shiftwidth=2                            " number of spaces for auto indent
set nu                              " print line numbers
set lazyredraw                      " redraw after executing macro
set noshowcmd                       " no extra info at end of command line
set scrolloff=5                     " scroll 5 lines before start/end of viewport
set visualbell                      " flash instead of beep
set cursorline                      " highlight current line
set ruler                           " show cursor position in status line, is replaced by airline anyway
set backspace=indent,eol,start      " allow normal backspace usage in insert mode
set relativenumber                  " relative line numbers
set ignorecase                      " when searching lower case, also find upper case
set smartcase                       " turn of lower case results when explicitly searching for upper case
set diffopt=filler,vertical         " start diff in vertical split and show filler lines
set autoread                        " automatically read file when changed, this currently only triggers when vim has focus
set completeopt=menuone,preview     " show auto complete also of ronly one match and open preview window
set complete+=kspell
let &showbreak = '↳ '               " arrow when text breaks into next line
set breakindent                     " indent wrapped lines to match start
set breakindentopt=sbr              " display showbreak before applying additional indent
set list                            " show whitespace
set listchars=nbsp:⦸                " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷┅               " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
                                    " + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:»            " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«           " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•              " BULLET (U+2022, UTF-8: E2 80 A2)
set nojoinspaces                    " don't autoinsert two spaces after '.', '?', '!' for join command
set hidden                          " allow buffer hiding without save

"set inccommand=split                " nice preview of search and replace actions

set showmatch                       " show matching brackets
set hlsearch                        " highlight all search matches
set textwidth=79                    " max width
set formatoptions+=j                " remove comment characters when joining lines
set formatoptions+=n                " indent numbered lists
set colorcolumn=120                 " display a column after 120

set foldmethod=indent               " fold with indentation method
set foldlevelstart=99               " no initial folding

set updatetime=1000                 " when to execute CursorHold
set mouse=a                         " enable mouse support

set autoindent 											" always set autoindenting on
set copyindent 											" copy the previous indentation on autoindenting
set shiftround 											" use multiple of shiftwidth when indenting with '<' and '>'

set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set noerrorbells
set nobackup
set nowritebackup
set noswapfile
set pastetoggle=<F2>
set nrformats+=alpha " increment or decrement alphabets characters using ctrl+a or ctrl+x 

" italic comment highlight
highlight Comment cterm=italic gui=italic

let g:tagbar_ctags_bin = "/usr/local/bin/ctags"

let g:sneak#label = 1
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1
"let g:sneak#prompt = '🕵'
let g:sneak#prompt = '🔎 '
" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

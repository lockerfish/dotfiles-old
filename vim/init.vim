call plug#begin('~/.dotfiles/vim/plugged')

" Colorscheme
Plug 'morhetz/gruvbox'

" General
"
" Asynchronous Lint Engine - Lint while you type
Plug 'w0rp/ale'
" Conquer of Completion - VSCode like
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" general purpose fuzzy finder
Plug 'junegunn/fzf.vim'
" On-demand loading - file system explorer
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
" comment and uncommenting files
Plug 'scrooloose/nerdcommenter'
" Git show git status on nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Git plugin
Plug 'tpope/vim-fugitive'
" Git Opens GitHub url by :Gbrowse on Git files 
Plug 'tpope/vim-rhubarb'
" Git Commit broser by :GV 
Plug 'junegunn/gv.vim'
" Git shows a git diff in the sign column
Plug 'airblade/vim-gitgutter'
" snippets manager
Plug 'SirVer/Ultisnips'
" code formatter
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Insert or delete brackets, parens, quotes in pairs
Plug 'jiangmiao/auto-pairs'
" surrounding keywords cs ds yss ysi
Plug 'tpope/vim-surround'
" multiple selection similar to Ctrl-d in VSCode
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" add icons to nerdtree, vim-airline, lightline
Plug 'ryanoasis/vim-devicons'
" bracket maps [a, a], ]b, etc
Plug 'tpope/vim-unimpaired'
" toggle and display marks
Plug 'kshenoy/vim-signature'
" personal wiki
Plug 'vimwiki/vimwiki'
" granular project configuration :AV
Plug 'tpope/vim-projectionist'

" class outline viewer
"Plug 'majutsushi/tagbar'
" Plug 'Shougo/denite.nvim'
" Plug 'Shougo/echodoc.vim'
" support for .editorconfig - consistent coding style
"Plug 'editorconfig/editorconfig-vim'
" web: support for expanding abbreviations similar to emmet ul>li*>span a
"Plug 'mattn/emmet-vim'
" configurable statusline / tabline 
"Plug 'itchyny/lightline.vim'

" Language
"Plug 'thosakwe/vim-flutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/dartlang-snippets'
Plug 'stephpy/vim-yaml'
" syntax file and other settings for typescript
Plug 'leafgarland/typescript-vim'

call plug#end()

source ~/.dotfiles/vim/settings.vim
source ~/.dotfiles/vim/mappings.vim
source ~/.dotfiles/vim/functions.vim

" Plugin settings
source ~/.dotfiles/vim/plug/autocompletion.vim
source ~/.dotfiles/vim/plug/prettier.vim
source ~/.dotfiles/vim/plug/vimwiki.vim
source ~/.dotfiles/vim/plug/grammarous.vim
source ~/.dotfiles/vim/plug/colorscheme.vim
source ~/.dotfiles/vim/plug/airline.vim
source ~/.dotfiles/vim/plug/dart.vim
source ~/.dotfiles/vim/plug/multi_cursor.vim
source ~/.dotfiles/vim/plug/a.vim

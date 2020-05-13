call plug#begin('~/.dotfiles/vim/plugged')

" Colorscheme
Plug 'morhetz/gruvbox'

" General
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'leafgarland/typescript-vim'
Plug 'SirVer/Ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"Plug 'rhysd/vim-grammarous'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-projectionist'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/echodoc.vim'

" Language
Plug 'thosakwe/vim-flutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/dartlang-snippets'
Plug 'stephpy/vim-yaml'

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

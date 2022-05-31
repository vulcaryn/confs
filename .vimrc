set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe', { 'oninstall': './install.py', 'onupdate': './install.py' }
Plugin 'preservim/nerdtree'
Plugin 'w0rp/ale'
Plugin 'git@github.com:pangloss/vim-javascript.git'
Plugin 'git@github.com:jelera/vim-javascript-syntax.git'
Plugin 'frazrepo/vim-rainbow'
Plugin 'kkoomen/vim-doge'
Plugin 'git@github.com:tpope/vim-fugitive.git' " git plugin
Plugin 'junegunn/fzf' " fuzzy search
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Themes
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'sonph/onehalf', { 'rtp': 'vim' }

call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline
let g:airline_powerline_fonts = 1

" ESLint
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" NERDTree
let g:nerdtree_tabs_autofind=1

" Rainbow
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ [ '*.{js,jsx,ts}' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" vim-javascript
let g:javascript_plugin_jsdoc = 1

" theme
colorscheme onehalfdark
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" base conf
syntax enable
set number
set relativenumber
set showmatch
set laststatus=2
set autoread

" autosave
augroup focus
	au BufLeave * silent! wall
augroup END

set autowriteall

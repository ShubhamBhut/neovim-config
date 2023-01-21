:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter highlighter
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'kassio/neoterm'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'bluz71/vim-moonfly-colors'
Plug 'preservim/nerdcommenter' "Nerd commentor

Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'Mofiqul/vscode.nvim'
Plug 'baliestri/aura-theme', { 'rtp': 'packages/neovim' }
call plug#end()

set termguicolors
colorscheme dracula
highlight Normal guibg=black guifg=white
let g:dracula_colorterm = 1
" colorscheme dracula

nmap <F8> :TagbarToggle<CR>
nnoremap <C-e> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-t> :belowright split term://bash<CR>
inoremap jj <Esc>
nnoremap <C-h> :TSEnable highlight<CR>

nmap <C-_> <Plug> NERDTCommenterToggle
vmap <C-_> <Plug> NERDTCommenterToggle<CR>gv

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nmap <C-r> :resize10 <CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


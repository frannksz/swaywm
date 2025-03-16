" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

" =======================================================
"                         VIM-PLUG
"       https://github.com/junegunn/vim-plug#neovim
" =======================================================

"                     Franklin Souza
"                       @frannksz
"
" =======================================================
"                         PLUGINS
" =======================================================

call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdcommenter' "NerdCommenter
Plug 'ryanoasis/vim-devicons' "Icons File Manager
Plug 'preservim/nerdtree' "NerdTree
Plug 'sheerun/vim-polyglot' "Syntax Check
Plug 'tc50cal/vim-terminal' "Terminal
Plug 'nvim-tree/nvim-web-devicons' "WebDevIcons
Plug 'akinsho/bufferline.nvim', { 'tag': '*' } "Bufferline
Plug 'nvim-lualine/lualine.nvim' "Lualine
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' } "LualinePywal
Plug 'lukas-reineke/indent-blankline.nvim' "Indent Blank
Plug 'nvim-lua/plenary.nvim' "Indent Blank
Plug 'norcalli/nvim-colorizer.lua' "Colorizer
Plug 'zaldih/themery.nvim' "Themery
Plug 'nvimdev/dashboard-nvim' "Dashboard
Plug 'neovim/nvim-lspconfig' "Nvim-Lspconfig
Plug 'williamboman/mason.nvim' "Nvim-mason
Plug 'williamboman/mason-lspconfig.nvim' "Nvim-lspconfig-mason
Plug 'rafamadriz/friendly-snippets' "SnippetsNeovim
Plug 'wfxr/minimap.vim' "Code-Minimap
Plug 'neoclide/coc.nvim', {'branch': 'release'} "CoC-NeoVIM
Plug 'nvim-lua/plenary.nvim' "Plenary
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' } "Telescope
Plug 'nvim-telescope/telescope-file-browser.nvim' "Telescope-File-Browser
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Nvim-Treesitter
Plug 'terryma/vim-multiple-cursors' "Multiple Cursors
Plug 'KabbAmine/vCoolor.vim' "Color GUI Neovim
Plug 'ellisonleao/carbon-now.nvim' "CarbonCode
Plug 'Djancyp/better-comments.nvim' "Bettercomments
Plug 'DanilaMihailov/beacon.nvim' "Cursor-Effects

" =======================================================
"                           THEMES
" =======================================================
Plug 'ellisonleao/gruvbox.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'tanvirtin/monokai.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
Plug 'xero/miasma.nvim'
Plug 'comfysage/evergarden'
Plug 'shrikecode/kyotonight.vim'
Plug 'romainl/Apprentice'
Plug 'rose-pine/neovim'
Plug 'scottmckendry/cyberdream.nvim'
Plug 'sho-87/kanagawa-paper.nvim'
Plug 'sainnhe/sonokai'
Plug 'qaptoR-nvim/chocolatier.nvim'
Plug 'Mofiqul/dracula.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'ntk148v/habamax.nvim'

call plug#end()

" =======================================================
"                       THEMES APLLY
" =======================================================
set bg=dark "light (Tema Claro), dark (Tema Escuro)
"color onedark
"color gruvbox
"color nordic
"color monokai
"color catppuccin
"color moonfly
"color miasma
"color evergarden
"color kyotonight
"color apprentice
"color rose-pine-moon
"color cyberdream
"color kanagawa-paper
"color sonokai
"color chocolatier
"color dracula
"color dracula-soft
"color habamax

" =======================================================
"                       CONFIGS NEOVIM
" =======================================================
set cursorline
"highlight clear CursorLine
"highlight CursorLine ctermbg=235
"set incsearch
set tabstop=4
set number
set autoindent
set wildmenu
set laststatus=2
set confirm
set title
set mouse=a
syntax on
filetype on
set termguicolors
set expandtab
set shiftwidth=2
set encoding=utf-8
set autowrite
set noswapfile
set hidden
set inccommand=split
set clipboard=unnamedplus
set incsearch ignorecase smartcase hlsearch
set guifont=JetBrainsMono\ Nerd\ Font:12
set relativenumber

" =======================================================
"                         NERDTREE
" =======================================================
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
nnoremap <C-l> :NERDTreeToggle<CR>

" =======================================================
"                        OTHERS CONFIGS
" =======================================================

" Bufferline
set termguicolors
lua << EOF
require"bufferline".setup{}
EOF

" Minimap
let g:minimap_width = 10
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 1

"Pyright
lua << EOF
require"mason".setup {}
require 'lspconfig'.pyright.setup {}
EOF

let mapleader="\<space>" "Leader Key

"Adicionando ; no final da linha
nnoremap <leader>; A;<esc>

"Vsplit neovim config
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Terminal
nnoremap <leader>t :vsplit term://zsh<cr>A

"Duplicate Line
nnoremap <c-d> <esc>:t.<cr>

"Comment Code
nmap <C-/> <Plug>NERDCommenterToggle
xmap <C-/> <Plug>NERDCommenterToggle

"Keyboard map
map <C-p> :MasonUpdate<CR>
map <C-t> :Themery<CR>
map <C-m> :Mason<CR>
map <C-b> :MinimapToggle<CR>
map <C-q> :q!<CR>
map <C-s> :w!<CR>
map <C-x> :s/$/

map <F8> :colorscheme wal<CR>
map q :q<CR>
map r :PlugInstall<CR>
map t :Tutor<CR>

"Abrir novo arquivo dentro do NeoVIM
nnoremap <C-k> :call OpenVnewInput()<CR>

function! OpenVnewInput()
  let l:filename = input("Digite o nome do arquivo: ", '', 'file')
  if !empty(l:filename)
    execute "vnew " . l:filename
  endif
endfunction

"Movendo linhas segurando SHIFT
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

"Definir o atalho para ativar/desativar números de linha
nnoremap <F2> :set invnumber<CR>

"Definir o atalho para ativar/desativar o relativenumber
nnoremap <F3> :set relativenumber!<CR>

"Telescope
nnoremap <F5> :Telescope<CR>

"Vcoolor
nnoremap <F6> :VCoolor<CR>

"Carbon
nnoremap <F7> :CarbonNow<CR>

"Desinstalar pacote mason
nnoremap <C-u> :MasonUninstall<Space>

"Copiar e Colar
vmap cp "+y
nmap c "+p

"AutoComplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



" =======================================================
"                       LUA-PLUGINS
" =======================================================
lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/lualine.lua')
lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/colorizer.lua')
lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/themery.lua')
lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/dashboard.lua')
lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/bufferline.lua')
lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/better-comments.lua')
lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/cursor-effects.lua')
"lua dofile(vim.fn.stdpath('config') .. '/lua-plugins/carbon.lua')

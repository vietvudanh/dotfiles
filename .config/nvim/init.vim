filetype plugin indent on

set number
set numberwidth=2
set background=dark

" tab
set shiftwidth=4
set tabstop=4
set expandtab

"" =============
" Plugins
"" =============
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" tree
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" barbar
Plug 'romgrk/barbar.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

lua require("init")

"" =============
" End Plugins
"" =============


"" =============
" Shortcuts
"" =============

nnoremap confe :e $MYVIMRC<CR>
nnoremap confl :e ~/.config/nvim/lua/init.lua<CR>
nnoremap confr :source $MYVIMRC<CR>
nnoremap <leader>b :NvimTreeToggle<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" barbar
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
"" =============
" End Short cuts
"" =============

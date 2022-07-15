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

call plug#end()

lua require("init")

"" =============
" End Plugins
"" =============


"" =============
" Short cuts
"" =============

nnoremap confe :e $MYVIMRC<CR>
nnoremap confl :e ~/.config/neovim/lua/init.lua<CR>
nnoremap confr :source $MYVIMRC<CR>
nnoremap <C-b> :NvimTreeToggle<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" =============
" End Short cuts
"" =============

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'Mofiqul/vscode.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'

call plug#end()

lua require("basic")
lua require("navigate-config")

lua require("competitive-programming-config")

lua require("nvim-tree-config")
" lua require("buffer-line-config")
lua require("vscode-config")
lua require("lualine-config")
lua require("barbar-config")

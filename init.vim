colorscheme torte
set clipboard+=unnamedplus
set cursorline

call plug#begin()
Plug 'neovim/nvim-lspconfig'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'master' }
Plug 'nvim-telescope/telescope-project.nvim'

Plug 'nvim-tree/nvim-tree.lua'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'phaazon/hop.nvim'

Plug 'akinsho/toggleterm.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lewis6991/gitsigns.nvim'

Plug 'folke/which-key.nvim'

Plug 'mfussenegger/nvim-dap'
Plug 'simrat39/rust-tools.nvim'
Plug 'simrat39/symbols-outline.nvim'

Plug 'folke/neodev.nvim'

Plug 'github/copilot.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let g:loaded_ruby_provider = 0
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0

" Quickstart configs for Nvim lsp
" https://github.com/neovim/nvim-lspconfig
lua require("lsp_config")
" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300

" A File Explorer For Neovim Written In Lua
" https://github.com/kyazdani42/nvim-tree.lua
lua require("nvim-tree_config")

" A completion plugin for neovim coded in Lua.
" https://github.com/hrsh7th/nvim-cmp
lua require("nvim-cmp_config")

" Neovim motions on speed!
" https://github.com/phaazon/hop.nvim
lua require("hop").setup()

" A neovim lua plugin to help easily manage multiple terminal windows
" https://github.com/akinsho/toggleterm.nvim
lua require("toggleterm_config")

" Nvim Treesitter configurations and abstraction layer
" https://github.com/nvim-treesitter/nvim-treesitter
lua require("nvim-treesitter_config")


" Git integration for buffers
" https://github.com/lewis6991/gitsigns.nvim
set signcolumn=yes:1
highlight clear SignColumn
lua require("gitsigns_config")

set mouse=nicr
set mouse=a

" Create key bindings that stick.
" https://github.com/folke/which-key.nvim
lua require("which-key_config")

" A tree like view for symbols in Neovim using the Language Server Protocol. Supports all your favourite languages.
" https://github.com/simrat39/symbols-outline.nvim
lua require("symbols-outline").setup()

" Neovim plugin for GitHub Copilot
" https://github.com/github/copilot.vim
lua require("copilot_config")

" Go development plugin for Vim
" https://github.com/fatih/vim-go
lua require("vim-go_config")


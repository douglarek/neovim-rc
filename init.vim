set cursorline

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'master' }

Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'phaazon/hop.nvim'

Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lewis6991/gitsigns.nvim'
call plug#end()

lua require("lsp_config")

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
autocmd BufWritePre *.go lua goimports(1000)

" Find, Filter, Preview, Pick. All lua, all the time.
" https://github.com/nvim-telescope/telescope.nvim
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" A File Explorer For Neovim Written In Lua
" https://github.com/kyazdani42/nvim-tree.lua
lua require("nvim-tree_config")
" See default mapping: https://github.com/kyazdani42/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt#L1071
nnoremap <leader>wm <cmd>NvimTreeToggle<cr>
nnoremap <leader>wb <cmd>NvimTreeFocus<cr>

" A completion plugin for neovim coded in Lua.
" https://github.com/hrsh7th/nvim-cmp
set completeopt=menu,menuone,noselect
lua require("nvim-cmp_config")

" Neovim motions on speed!
" https://github.com/phaazon/hop.nvim
lua require("hop_config")
nnoremap <leader>jw <cmd>HopWord<cr>
nnoremap <leader>jl <cmd>HopLine<cr>

" A neovim lua plugin to help easily manage multiple terminal windows
" https://github.com/akinsho/toggleterm.nvim
lua require("toggleterm_config")
nnoremap <leader>tt <cmd>ToggleTerm<cr>

" Nvim Treesitter configurations and abstraction layer
" https://github.com/nvim-treesitter/nvim-treesitter
lua require("nvim-treesitter_config")


" Git integration for buffers
" https://github.com/lewis6991/gitsigns.nvim
set signcolumn=yes:1
highlight clear SignColumn
lua require("gitsigns_config")

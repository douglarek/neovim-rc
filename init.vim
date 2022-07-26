set cursorline

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'master' }

Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
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

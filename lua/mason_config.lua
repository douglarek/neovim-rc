require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "gopls", "rust_analyzer", "tsserver", "clangd", "pylsp" },
}

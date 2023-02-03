vim.o.timeout = true
vim.o.timeoutlen = 300
local wk = require("which-key")
wk.setup {}
wk.register({
	["<leader>l"] = {
		name = "+lsp",
		r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename identities" },
		o = { "<cmd>SymbolsOutline<CR>", "Show code outline" },
	},
})
wk.register({
	["<leader>w"] = {
		name = "+NvimTree",
		o = { "<cmd>NvimTreeOpen<CR>", "NvimTreeToggleOpen" },
	},
})


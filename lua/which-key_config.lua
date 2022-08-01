local wk = require("which-key")
wk.setup {}
wk.register({
	["<leader>l"] = {
		name = "+lsp",
		R = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename identities" },
	},
})


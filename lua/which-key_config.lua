vim.o.timeout = true
vim.o.timeoutlen = 300
local wk = require("which-key")
wk.setup {}
wk.register({
      ["<leader>l"] = {
    name = "+lsp",
    r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "rename identities" },
    o = { "<cmd>SymbolsOutline<CR>", "show code outline" },
  },
})

wk.register({
      ["<leader>f"] = {
    name = "+tree",
    o = { "<cmd>NvimTreeOpen<CR>", "open" },
    t = { "<cmd>NvimTreeToggle<CR>", "toggle" },
    f = { "<cmd>NvimTreeFocus<CR>", "focus" },
  },
})

wk.register({
      ["<leader>s"] = {
    name = "+telescope",
    s = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "live fuzzy search inside of the currently open buffer" },
    f = { "<cmd>Telescope find_files<CR>", "find files" },
    g = { "<cmd>Telescope live_grep<CR>", "live grep" },
    b = { "<cmd>Telescope buffers<CR>", "buffers" },
    h = { "<cmd>Telescope help_tags<CR>", "help tags" },
  },
})

wk.register({
      ["<leader>j"] = {
    name = "+hop",
    w = { "<cmd>HopWord<CR>", "hop word" },
    l = { "<cmd>HopLine<CR>", "hop line" },
  },
})

wk.register({
      ["<leader>t"] = {
    name = "+term",
    t = { "<cmd>ToggleTerm<CR>", "toggle terminal" },
  },
})

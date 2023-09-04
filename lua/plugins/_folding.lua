vim.o.foldlevel = 99
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

-- Need this autocmd because of treesitter.
-- See the issue below for more info:
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/1337
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*" },
  command = "normal zx zR",
})

return {}

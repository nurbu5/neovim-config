return {
  { "olimorris/neotest-rspec", lazy = true },
  { "nvim-neotest/neotest-go", lazy = true },
  { "haydenmeade/neotest-jest", lazy = true },
  { "thenbe/neotest-playwright", lazy = true },
  {
    "nvim-neotest/neotest",
    lazy = true,
    opts = { adapters = "neotest-rspec", "neotest-go", "neotest-jest", "neotest-playwright" },
  },
}

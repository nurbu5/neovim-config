local builtin = require("telescope.builtin")

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<c-p>",
        builtin.find_files,
        desc = "Find File with ctrl-p",
      },
      {
        "\\",
        builtin.live_grep,
        desc = "Grep Plugin with \\",
      },
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    -- change some options
    opts = {
      defaults = {
        layout_config = { horizontal = { width = 0.95 } },
      },
    },
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}

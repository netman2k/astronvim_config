return {
  "netman2k/jsonpath.nvim",
  branch = "fix/array-index-bugs",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {},
  keys = {
    { "<leader>jp", function() print(require("jsonpath").get()) end, desc = "Show JSON path", ft = "json" },
    {
      "<leader>jy",
      function() vim.fn.setreg("+", require("jsonpath").get()) end,
      desc = "Yank JSON path",
      ft = "json",
    },
  },
}

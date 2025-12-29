return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        clojure = { "zprint" },
      },
    },
  },
  {
    "julienvincent/nvim-paredit",
    config = function()
      require("nvim-paredit").setup()
    end,
  },
}

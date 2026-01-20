return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
      },
    },
  },
}

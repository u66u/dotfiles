return {
  -- Install formatter via Mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "black", -- or "ruff" for faster alternative
      },
    },
  },

  -- Configure conform to use it
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" }, -- or { "ruff_format" }
      },
    },
  },
}
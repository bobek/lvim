lvim.lang.markdown = {
  formatters = {
    {
      exe = "prettier",
      -- args = {},
    },
  },

  linters = {
    {
      -- @usage can be write_good or vale or markdownlint
      exe = "markdownlint",
      -- args = {},
    },
    {
      -- @usage can be write_good or vale or markdownlint
      exe = "vale",
      -- args = {},
    },
  }
}


require("lsp.null-ls").setup "markdown"

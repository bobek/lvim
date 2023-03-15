local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({ { exe = "prettier", filetypes = { "markdown" } } })

local linters = require "lvim.lsp.null-ls.linters"
linters.setup(
  {
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
  )

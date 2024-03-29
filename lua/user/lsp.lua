require("mason-lspconfig").setup({
  -- ensure_installed = {
  --   "awk_ls",
  --   "bashls",
  --   "cssls",
  --   "dockerls",
  --   "elixirls",
  --   "gopls",
  --   "html",
  --   "jsonls",
  --   "marksman",
  --   "pyright",
  --   "pylsp",
  --   "sqlls",
  --   "tailwindcss",
  --   "terraformls",
  --   "tflint",
  --   "vuels",
  --   "yamlls"
  -- }
})

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "elixir",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "go",
  "hcl",
  "markdown"
}

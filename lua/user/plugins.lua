-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
-- }

lvim.plugins = {
  "folke/todo-comments.nvim",
  --  { "ggandor/lightspeed.nvim" },

  "ruifm/gitlinker.nvim",

  "NvChad/nvim-colorizer.lua",

  "anufrievroman/vim-angry-reviewer",

  { "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require('neoclip').setup()
    end,
  },

  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").set_default_keymaps()
    end
  },

  -- automatically install all the formatters and linters specified by the following
  -- config options:
  -- * linters.setup
  -- * formatters.setup
  { "jayp0521/mason-null-ls.nvim",
    config = function()
      require "mason-null-ls".setup({
        automatic_installation = false,
        automatic_setup = true,
        ensure_installed = nil
      })
    end
  },

  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    -- lazy = true,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },

  {
    'codota/tabnine-nvim',
    build = "./dl_binaries.sh",
    config = function()
      require('tabnine').setup({
        disable_auto_comment = true,
        accept_keymap = "<Tab>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" }
      })
    end
  },

  {
    "andrewferrier/wrapping.nvim",
    config = function()
      require("wrapping").setup({
        softener = { markdown = 1.9 },
      })
    end,
  },

  {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
    end,
  },

}

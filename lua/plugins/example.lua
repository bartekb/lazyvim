return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      -- transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
        ["<C-y>"] = { "select_and_accept" },
      },
    },
  },

  -- {
  --   "neovim/nvim-lspconfig",
  --   ---@class PluginLspOpts
  --   opts = {
  --     ---@type lspconfig.options
  --     servers = {
  --       -- pyright will be automatically installed with mason and loaded with lspconfig
  --       pyright = {},
  --     },
  --   },
  -- },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "ruby",
        "go",
        "graphql",
        "sql",
        "html",
        "css",
        "rust",
        "yaml",
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      require("lint").linters_by_ft = {
        ruby = { "ruby" },
        -- go = { 'golangcilint' },
        -- lua = {'luacheck'},
      }
    end,
  },
  {
    "snacks.nvim",
    opts = {
      indent = { enabled = false },
    },
  },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   opts = {
  --     enabled = false,
  --   },
  -- },
}

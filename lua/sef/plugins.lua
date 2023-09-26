return {

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "c",
          "query",
          "lua",
          "vim",
          "vimdoc",
          "javascript",
          "html",
          "css",
          "c_sharp",
          "bash",
          "dockerfile",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "json",
          "luadoc",
          "sql",
          "toml",
          "typescript",
          "yaml",
          "xml"
        },

        sync_install = false,

        auto_install = true,

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false
        }
      })
    end
  },

  "rebelot/kanagawa.nvim",

  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

  -- LSP Support
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
    },
  },

  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    }
  }
}


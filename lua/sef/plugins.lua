return {

  "nvim-tree/nvim-web-devicons",

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    config = function()
      require("nvim-tree").setup {
        actions = {
          open_file = {
            quit_on_open = true
          }
        }
      }
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup {
      }
    end
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

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    },
  },
  "hrsh7th/cmp-nvim-lsp",

  'neovim/nvim-lspconfig',

  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

}


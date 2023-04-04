local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.lspconfig"
    end
  },
  {
    "prettier/vim-prettier",
    ft = {
    'javascript',
    'typescript',
    'javascript.jsx',
    'typescript.tsx',
    'html',
    'css',
    'json',
    'yaml',
    'markdown'
    },
    config = function()
      require "custom.prettier"
    end
  },
  {
  'neoclide/coc.nvim',
  branch = 'release',
  lazy = false,
  config = function()
    vim.g.coc_global_extensions = {
      'coc-rust-analyzer'
    }
  end
  }
}


return plugins


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy
  use {
    'ibhagwan/fzf-lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('fzf-lua').setup({ fzf_bin = 'sk' })
    end
  }

  -- Colors
  use 'bradcush/nvim-base16'
  use 'folke/tokyonight.nvim'
  use 'ojroques/nvim-hardline'
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons',
  }

  -- LSP and Completion
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },

      -- Additional completions
      { 'hrsh7th/cmp-nvim-lsp-document-symbol' },
      { 'hrsh7th/cmp-nvim-lsp-signature-help' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'petertriho/cmp-git' },
      { 'davidsierradz/cmp-conventionalcommits' },
      { 'saadparwaiz1/cmp_luasnip' }
    }
  }
  use 'ray-x/lsp_signature.nvim'

  -- Copilot
  use { "zbirenbaum/copilot.lua" }
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
  }

  -- Utilities
  use 'onsails/lspkind.nvim' -- Gives icons in completion
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use "stevearc/aerial.nvim" -- Outline
  use 'lewis6991/gitsigns.nvim'
  use "windwp/nvim-autopairs"

  -- Languages
  use 'Vimjas/vim-python-pep8-indent'
end)

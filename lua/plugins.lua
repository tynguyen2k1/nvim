-- local fn = vim.fn
-- local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
--   packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
-- end

return require('packer').startup(function(use)
  -- Theme
  use 'folke/tokyonight.nvim'
  -- Status line
  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      -- some optional icons
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- Buffer
  use "romgrk/barbar.nvim"
  -- For hex color
  use 'norcalli/nvim-colorizer.lua'
  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  -- find file
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-lua/popup.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- comment chuan hon

  -- Neovim LSP
  use 'neovim/nvim-lspconfig'
  -- Tab/Auto completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- snippets
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  -- use 'L3MON4D3/LuaSnip'
  -- use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets" -- snippets co san
  -- lsp installer
  use 'williamboman/nvim-lsp-installer' -- trinh quan ly lsp
  -- Auto pairs '', "", [], {}, (), ``
  use 'windwp/nvim-autopairs'
  -- For indent line
  use 'lukas-reineke/indent-blankline.nvim'
  -- For nice highlighting
  use 'nvim-treesitter/nvim-treesitter'
  -- Smooth scrolling
  use 'karb94/neoscroll.nvim'
  -- Git
  use "lewis6991/gitsigns.nvim"
  -- float terminal
  use 'akinsho/toggleterm.nvim'

end)

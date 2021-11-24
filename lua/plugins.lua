-- local fn = vim.fn
-- local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
--   packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
-- end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Theme
  use 'folke/tokyonight.nvim'
  -- Status line
  -- use {
  --   'glepnir/galaxyline.nvim',
  --     branch = 'main',
  --     -- some optional icons
  --     requires = {'kyazdani42/nvim-web-devicons', opt = true}
  -- }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- Buffer
  use {"romgrk/barbar.nvim"}
  -- For hex color
  use 'norcalli/nvim-colorizer.lua'
  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    config = function ()
      require('plugins.nvimtree').setup()
    end,
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- find file
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-lua/popup.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- Comment
  use {'numToStr/Comment.nvim'}
  use {'JoosepAlviste/nvim-ts-context-commentstring'} -- comment chuan hon

  -- Neovim LSP
  use {
    'neovim/nvim-lspconfig',
    config = require('plugins.lsp-config').config()
  }
  -- use {
  --   'jose-elias-alvarez/null-ls.nvim',
  --   config = function ()
  --     require('plugins.null-ls').setup()
  --   end,
  --   requires = 'nvim-lua/plenary.nvim'
  -- }
  -- Tab/Auto completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  -- use 'hrsh7th/cmp-cmdline'
  use 'antoinemadec/FixCursorHold.nvim'

  -- snippets
  -- use 'hrsh7th/cmp-vsnip'
  -- use 'hrsh7th/vim-vsnip'
  use 'L3MON4D3/LuaSnip'
  use {
    "saadparwaiz1/cmp_luasnip",
    after = "LuaSnip"
  }
  use "rafamadriz/friendly-snippets" -- snippets co san
  -- lsp installer
  use 'williamboman/nvim-lsp-installer' -- trinh quan ly lsp
  -- Auto pairs '', "", [], {}, (), ``
  use 'windwp/nvim-autopairs'
  -- For indent line
  use 'lukas-reineke/indent-blankline.nvim'
  -- For nice highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    -- run = ':TSUpdate'
  }
  -- matchup
  use {
    'andymass/vim-matchup',
    event = 'VimEnter',
    config = function ()
      require("plugins.vim-matchup").config()
    end
  }
  -- Smooth scrolling
  use {
    'karb94/neoscroll.nvim',
    config = function ()
      require('neoscroll').setup()
    end
  }
  -- Tmux navigator
  use 'christoomey/vim-tmux-navigator'
  -- Git
  use {"lewis6991/gitsigns.nvim",}
  -- float terminal
  use {'akinsho/toggleterm.nvim',}
  -- Hop, use for easy motion
  use {
    'phaazon/hop.nvim',
    setup = function ()
      require("keybinds").hop()
    end,
    config = function ()
      require('hop').setup()
    end
  }
  -- Auto tag
  use 'windwp/nvim-ts-autotag'
  --change (){}[], tag
  use 'tpope/vim-surround'
  -- using . repeat surround.vim
  use 'tpope/vim-repeat'
  -- highlight current word
  use {
    'RRethy/vim-illuminate',
    config = function ()
        require('plugins.vim-illuminate').setup()
    end,
    requires = 'neovim/nvim-lspconfig'
  }

  -- Live server
  use {'turbio/bracey.vim', opt = true, cmd = {'Bracey'}}
  -- Outline
  use {
    'simrat39/symbols-outline.nvim',
    config = function ()
      require('plugins.symbols-outline').config()
    end
  }
  -- Show function
  use {
    "ray-x/lsp_signature.nvim",
    config = function ()
      require('plugins.lsp_signature').setup()
    end
  }
  -- Code formatter.
  use {
    "sbdchd/neoformat",
    cmd = "Neoformat"
  }
  --
  -- use {
  --   'max397574/better-escape.nvim',
  --   config = function()
  --     require("better_escape").setup{
  --       mapping = {"jk", "jj"}, -- a table with mappings to use
  --       timeout = vim.o.timeoutlen,
  --     }
  --   end,
  -- }

end)

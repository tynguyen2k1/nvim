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
  use 'shaunsingh/nord.nvim'

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    config = function ()
      require('plugins.lualine')
    end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Bufferline.
  use {
    "akinsho/nvim-bufferline.lua",
    config  = function()
      require("plugins/bufferline")
    end,
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- File explorer tree.
  use {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.nvimtree")
    end,
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Find file
  use {
    'nvim-telescope/telescope.nvim',
    config = function ()
      require('plugins.telescope')
    end,
    requires = 'nvim-lua/plenary.nvim'
  }
  use 'nvim-lua/popup.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- For nice highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    -- run = ':TSUpdate'
    config = function ()
      require('plugins.treesitter')
    end
  }

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function ()
      require('plugins.comment')
    end
  }
  use {'JoosepAlviste/nvim-ts-context-commentstring'} -- comment chuan hon

  -- Neovim LSP
  use {
    'neovim/nvim-lspconfig',
    config = require('plugins.lsp').config()
  }

  -- Lsp installer
  use {
    'williamboman/nvim-lsp-installer',
    config = function ()
      require('plugins.lsp-installer')
    end
  }

  -- Tab/Auto completion
  use {
    'hrsh7th/nvim-cmp',
    config = function ()
      require('plugins.nvim-cmp')
    end
  }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  -- use 'hrsh7th/cmp-cmdline'
  use 'antoinemadec/FixCursorHold.nvim'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets" -- snippets co san

  -- Auto pairs '', "", [], {}, (), ``
  use {
    'windwp/nvim-autopairs',
    config = function ()
      require('plugins.autopairs')
    end
  }

  -- For indent line
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function ()
      require('plugins.indent-blankline')
    end
  }

  -- Matchup
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
  use {
    "lewis6991/gitsigns.nvim",
    config = function ()
      require('plugins.gitsigns')
    end
  }

  -- Float terminal
  use {
    'akinsho/toggleterm.nvim',
    config = function ()
      require('plugins.terminal')
    end
  }

  -- Hop, use for easy motion
  use {
    'phaazon/hop.nvim',
    cmd = {
      "HopWord",
      "HopLine",
      "HopPattern",
    },
    config = function ()
      require('hop').setup()
    end
  }

  -- Auto tag
  use 'windwp/nvim-ts-autotag'

  --change (){}[], tag
  use 'tpope/vim-surround'

  -- For hex color
  use {
    'norcalli/nvim-colorizer.lua',
    config = function ()
      require('plugins.colorizer')
    end
  }

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

  -- View and search LSP symbols, tags in Neovim.
  -- use {
  --   "liuchengxu/vista.vim",
  --   cmd = "Vista",
  --   config = function ()
  --     require("plugins/vista")
  --   end
  -- }

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

  -- Stable buffer when opening windows
  use {
	"luukvbaal/stabilize.nvim",
	config = function()
        require("stabilize").setup()
    end
  }

  -- Trouble
  use {
    "folke/trouble.nvim",
    cmd = "TroubleToggle"
  }

  -- This plugin show trailing whitespace.
  use {
    "ntpeters/vim-better-whitespace",
    config = function()
        require("plugins/better-whitespace")
    end
  }

  --Markdown preview
  use({
    "iamcco/markdown-preview.nvim",
    cmd = {
        "MarkdownPreview",
        "MarkdownPreviewStop",
    },
    run = "cd app && npm install",
    setup = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  })

  -- Delete buffer
  use {
    'ojroques/nvim-bufdel',
    cmd = "BufDel"
  }

end)

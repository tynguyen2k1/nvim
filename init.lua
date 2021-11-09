require('settings') -- setting UI
require('keybinds') -- setting keyboard
require('plugins')  -- load plugin


require('theme')                  -- load theme
require('plugins.galaxyline')     -- galaxyline
require('plugins.treesitter')
require('plugins.lsp-installer')  -- config lsp installer
require('plugins.nvim-cmp')       -- loading and config nvim cmp
require('plugins.telescope')      -- load config telescope
require('plugins.comment')        --
require('plugins.autopairs')
require('plugins.gitsigns')
require('plugins.nvimtree')
require('plugins.indent-blankline')
require('plugins.terminal')
require('neoscroll').setup()
require('plugins.colorizer')
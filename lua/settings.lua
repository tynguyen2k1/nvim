O = vim.o
BO = vim.bo
WO = vim.wo
G = vim.g
CMD = vim.cmd



O.backup = false -- creates a backup file
O.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
O.cmdheight = 1 -- more space in the neovim command line for displaying messages
O.colorcolumn = "99999" -- fixes indentline for now
O.completeopt = 'menuone,noselect'
O.conceallevel = 0 -- so that `` is visible in markdown files
O.fileencoding = "utf-8" -- the encoding written to a file
O.foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
O.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
O.guifont = "monospace:h17" -- the font used in graphical neovim applications
O.hidden = true -- required to keep multiple buffers and open multiple buffers
O.hlsearch = false -- nohighlight all matches on previous search pattern
O.ignorecase = true -- ignore case in search patterns
-- O.mouse = "a" -- allow the mouse to be used in neovim
O.pumheight = 10 -- pop up menu height
O.showmode = false -- false if you don't like -- INSERT -- anymore
O.showtabline = 4 -- always show tabs
O.smartcase = true -- smart case
O.smartindent = true -- make indenting smarter again
O.splitbelow = true -- force all horizontal splits to go below current window
O.splitright = true -- force all vertical splits to go to the right of current window
O.swapfile = false -- creates a swapfile
O.termguicolors = true -- set term gui colors (most terminals support this)
-- O.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
O.title = true -- set the title of window to the value of the titlestring
-- O.undodir = utils.join_paths(get_cache_dir(), "undo") -- set an undo directory
O.undofile = true -- enable persistent undo
O.updatetime = 300 -- faster completion
O.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
O.expandtab = true -- convert tabs to spaces
O.shiftwidth = 4 -- the number of spaces inserted for each indentation
O.tabstop = 4 -- insert 4 spaces for a tab
O.cursorline = true -- highlight the current line
O.number = true -- set numbered lines
O.relativenumber = false -- set relative numbered lines
O.numberwidth = 4 -- set number column width to 2 {default 4}
O.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
O.wrap = false -- display lines as one long line
O.spell = false
O.spelllang = "en"
O.scrolloff = 4 -- is one of my fav
O.sidescrolloff = 4

vim.api.nvim_command('set nofoldenable')
vim.api.nvim_command('set nocompatible')
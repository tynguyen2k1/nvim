O = vim.o
BO = vim.bo
WO = vim.wo
G = vim.g
CMD = vim.cmd


O.hidden = true
O.clipboard = 'unnamedplus'
O.hlsearch = false
O.incsearch = true
O.showtabline = 2
O.updatetime = 300
O.timeoutlen = 500
-- O.mouse = 'a'
-- O.cmdheight = 2
O.scrolloff = 4
O.sidescrolloff = 4
O.backup = false
O.writebackup = false
O.pumheight = 10 -- pop up menu height
O.colorcolumn = "99999" -- fixes indentline for now
O.fileencoding = "utf-8" -- the encoding written to a file
O.guifont = "monospace:h27" -- the font used in graphical neovim applications
O.hidden = true -- required to keep multiple buffers and open multiple buffers
O.termguicolors = true -- set term gui colors (most terminals support this)
O.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
O.expandtab = true -- convert tabs to spaces
O.cursorline = true -- highlight the current line
O.numberwidth = 4 -- set number column width to 2 {default 4}

vim.api.nvim_command('set nofoldenable')



BO.shiftwidth = 4
BO.softtabstop = 4
BO.expandtab = true
WO.linebreak = true
WO.number = true
-- WO.relativenumber = true
WO.signcolumn = 'yes'
-- WO.colorcolumn = '80'

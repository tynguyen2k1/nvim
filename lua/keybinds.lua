local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local M = {}

-- Set 'Space' key as leader key
vim.g.mapleader = ' '


-- Insert mode
-- Undo
-- map('i', '<C-z>', '<c-o>:u', opt)
CMD[[inoremap <c-z> <c-o>:u<CR>]]
-- 'jk' for quitting insert mode
map('i', 'jk', '<ESC>', opt)
-- 'kj' for quitting insert mode
map('i', 'kj', '<ESC>', opt)
-- 'jj' for quitting insert mode
map('i', 'jj', '<ESC>', opt)
-- Move current line / block with Alt-j/k ala vscode.
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', opt)
-- Move current line / block with Alt-j/k ala vscode.
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', opt)
-- navigation
map('i', '<A-Up>', '<C-\\><C-N><C-w>k', opt)
map('i', '<A-Down>', '<C-\\><C-N><C-w>j', opt)
map('i', '<A-Left>', '<C-\\><C-N><C-w>h', opt)
map('i', '<A-Right>', '<C-\\><C-N><C-w>l', opt)


-- normal mode
-- Move between windows
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)
map('n', '<C-l>', '<C-w>l', opt)

-- Buffer
-- Add new buffer and move to it
map('n', '<C-n>', ':tabnew ', { silent = false })
-- Buffer pick functionality
map('n', '<Leader>b', ':BufferPick<CR>', opt)
-- Remove a buffer
map('n', '<C-w>', ':bd<CR>', opt)
-- Switch among buffers
map('n', '<TAB>', ':bnext<CR>', opt)
map('n', '<S-TAB>', ':bprevious<CR>', opt)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Sort automatically by...
map('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bl', ':BufferOrderByLanguage<CR>', opts)


-- Save & quit
map('n', '<C-s>', ':w<cr>', opt)
map('n', '<C-q>', ':q<cr>', opt)

-- Resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-Down>', ':resize +2<CR>', { noremap = true, silent = true })
map('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })


M.hop = function ()
    map("n", "<space>w", ":HopWord <CR>")
    map("n", "<space>l", ":HopLine <CR>")
    map("n", "<space>/", ":HopPattern <CR>")
end

return M
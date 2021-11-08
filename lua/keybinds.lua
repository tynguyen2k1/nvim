local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Set 'Space' key as leader key
vim.g.mapleader = ' '

-- Move between windows
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)
map('n', '<C-l>', '<C-w>l', opt)

-- Move buffer
map('n', '<Tab>', ':BufferNext<CR>', opt)
map('n', '<S-Tab>', ':BufferPrevious<CR>', opt)

--
map('n', '<C-s>', ':w<cr>', opt) -- save
map('n', '<C-q>', ':q<cr>', opt) -- quit

local vim = vim
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Set 'Space' key as leader key
vim.g.mapleader = ' '

local opts = { noremap = true, silent = true }
-- Insert mode
-- Undo
-- map('i', '<C-z>', '<c-o>:u', opts)
CMD[[inoremap <silent> <c-z> <c-o>:u<CR>]]
-- CMD[[imap \nn <C-O>o]]
-- -- 'jk' for quitting insert mode
-- map('i', 'jk', '<ESC>', opts)
-- -- 'kj' for quitting insert mode
-- map('i', 'kj', '<ESC>', opts)
-- -- 'jj' for quitting insert mode
-- map('i', 'jj', '<ESC>', opts)

-- Move current line / block with Alt-j/k ala vscode.
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
-- Move current line / block with Alt-j/k ala vscode.
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)
-- navigation
map('i', '<A-Up>', '<C-\\><C-N><C-w>k', opts)
map('i', '<A-Down>', '<C-\\><C-N><C-w>j', opts)
map('i', '<A-Left>', '<C-\\><C-N><C-w>h', opts)
map('i', '<A-Right>', '<C-\\><C-N><C-w>l', opts)


-- normal mode
-- Move between windows
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Buffer
-- Add new buffer and move to it
map('n', '<C-n>', ':tabnew ', { noremap = true ,silent = false })

-- Switch among buffers
map('n', '<TAB>', ':bnext<CR>', opts)
map('n', '<S-TAB>', ':bprevious<CR>', opts)

-- Buffer switching.
map("n", "<A-[>", ":BufferLineCyclePrev<CR>")
map("n", "<A-]>", ":BufferLineCycleNext<CR>")

-- Buffer closing.
map('n', '<A-c>', ':BufDel<CR>', opts)
map('n', '<leader>bd', ':BufferLinePickClose<CR>', opts)

-- Buffer moving.
map("n", "<leader>bl", ":BufferLineMoveNext<CR>")
map("n", "<leader>bh", "::BufferLineMovePrev<CR>")

-- Goto buffer in position...
map('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', opts)
map('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', opts)
map('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', opts)
map('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', opts)
map('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', opts)
map('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', opts)
map('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', opts)
map('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', opts)
map('n', '<A-9>', ':BufferLineGoToBuffer 9<CR>', opts)
map("n", "<leader>bb", ":BufferLinePick<CR>", opts)

-- Sort automatically by...
map("n", "<leader>bse", ":BufferLineSortByExtension<CR>", opts)
map("n", "<leader>bsd", ":BufferLineSortByDirectory<CR>", opts)
map("n", "<leader>bsn", "<cmd>lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>", opts)


-- Save & quit
map('n', '<C-s>', ':w<cr>', opts)
map('n', '<C-q>', ':q<cr>', opts)

-- Resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Outline
map("n", "<leader>a", ":SymbolsOutline <CR>", opts)

-- ToggleTerm
-- map("n", "<C-t>", ":ToggleTerm dir=%:p:h<CR>")
-- map("t", "<C-t>", ":ToggleTerm dir=%:p:h<CR>")
map("n", "v:count1 <C-t>", ":v:count1" .. "\"ToggleTerm\"<CR>")
map("v", "v:count1 <C-t>", ":v:count1" .. "\"ToggleTerm\"<CR>")

-- Code formatter.
-- map("n", "<leader>fr", ":Neoformat<CR>", opts)

-- Hop.
map("n", "<space>w", ":HopWord <CR>")
map("n", "<space>l", ":HopLine <CR>")
map("n", "<space>/", ":HopPattern <CR>")

-- Vim-illuminate
map('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
map('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)

-- Lsp
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>x', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua via.lsp.diagnostic.set_loclist()<CR>', opts)
map('n', '<space>fr', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
-- map('n', "<space>fm", "<cmd>lua require('plugins.lsp').format_range_operator()<CR>", opts) -- format select
-- Peek
map('n', '<leader>pd', "<cmd>lua require('plugins.lsp.peek').Peek('definition')<cr>", opts)
map('n', '<leader>pt', "<cmd>lua require('plugins.lsp.peek').Peek('typeDefinition')<cr>", opts)
map('n', '<leader>pi', "<cmd>lua require('plugins.lsp.peek').Peek('implementation')<cr>", opts)

-- Mappings for nvimtree
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

-- Lazygit
map("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", opts)

-- Telescop.
map("n", "<Leader>fw", ":Telescope live_grep<CR>")
map("n", "<Leader>gt", ":Telescope git_status<CR>")
map("n", "<Leader>cm", ":Telescope git_commits<CR>")
map("n", "<Leader>ff", ":Telescope find_files find_command=rg,--follow,--hidden,--files<CR>")
map("n", "<Leader>fd", ":Telescope find_directories<CR>")
map("n", "<Leader>fp", ":Telescope media_files<CR>")
map("n", "<Leader>fb", ":Telescope buffers<CR>")
map("n", "<Leader>fh", ":Telescope help_tags<CR>")
map("n", "<Leader>fo", ":Telescope oldfiles<CR>")
map("n", "<Leader>th", ":Telescope colorscheme<CR>")

local M = {}

function M.setup()
    vim.g.Illuminate_delay = 300
    vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
    vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
    vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]
end

return M


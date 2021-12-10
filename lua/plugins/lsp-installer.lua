local lsp_installer = require("nvim-lsp-installer")
local M = require('plugins.lsp')

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}
    opts.on_attach = M.on_attach
    opts.root_dir = vim.loop.cwd
    opts.capabilities = M.capabilities
    server:setup(opts)
end)

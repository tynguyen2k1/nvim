local lsp_installer = require("nvim-lsp-installer")
local M = require('plugins.lsp-config')

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}
    opts.on_attach = M.on_attach
    opts.root_dir = vim.loop.cwd
    opts.capabilities = M.capabilities
    -- (optional) Customize the options passed to the server
    -- if server.name == "intelephense" then
    -- opts.root_dir = require('lspconfig').util.root_pattern("index.php" ,"composer.json", ".git")
    -- end
    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)

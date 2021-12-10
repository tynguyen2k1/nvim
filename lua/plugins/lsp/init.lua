local vim = vim
local M = {}
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- highlight current word
  require 'illuminate'.on_attach(client)

  -- Show function
  require "lsp_signature".on_attach()

end

M.on_attach = on_attach


local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- capabilities.textDocument.completion.completionItem.preselectSupport = true
-- capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
-- capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
-- capabilities.textDocument.completion.completionItem.deprecatedSupport = true
-- capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
-- capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
-- capabilities.textDocument.completion.completionItem.resolveSupport = {
--    properties = {
--       "documentation",
--       "detail",
--       "additionalTextEdits",
--    },
-- }
M.capabilities = capabilities

function M.config()

   -- replace the default lsp diagnostic symbols
   local function lspSymbol(name, icon)
      vim.fn.sign_define("LspDiagnosticsSign" .. name, { text = icon, numhl = "LspDiagnosticsDefault" .. name })
   end

   lspSymbol("Error", "")
   lspSymbol("Information", "")
   lspSymbol("Hint", "")
   lspSymbol("Warning", "")

   vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,{
      virtual_text = {
         prefix = "●",
         spacing = 0,
      },
      signs = true,
      underline = true,
      update_in_insert = true, -- update diagnostics insert mode
   })

   vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = "single",
   })

   -- suppress error messages from lang servers
   -- vim.notify = function(msg, log_level, _opts)
   --    if msg:match "exit code" then
   --       return
   --    end
   --    if log_level == vim.log.levels.ERROR then
   --       vim.api.nvim_err_writeln(msg)
   --    else
   --       vim.api.nvim_echo({ { msg } }, true, {})
   --    end
   -- end

end




-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {
  'pyright',
  'rust_analyzer',
  'tsserver',
  'html',
  'cssls',
  'intelephense',
  'clangd',
  'bashls'
}
M.server = servers

-- for _, lsp in ipairs(servers) do
--   nvim_lsp[lsp].setup {
--     on_attach = on_attach,
--     root_dir = vim.loop.cwd,
--     capabilities = capabilities,
--   }
-- end
-- M.config()

return M

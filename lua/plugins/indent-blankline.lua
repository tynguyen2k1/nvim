vim.opt.list = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

-- Disable indent-blankline on these pages.
vim.g.indent_blankline_filetype_exclude = {
  "help",
  "terminal",
  "dashboard",
  "packer",
  "lsp-installer",
  "lspinfo",
  "vista_kind",
  "Outline"
}
vim.g.indent_blankline_buftype_exclude = { "terminal" }

vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = true

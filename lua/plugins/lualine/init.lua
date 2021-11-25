require('lualine').setup{
    options = {
        theme = 'tokyonight',
        disabled_filetypes = {
          -- "toggleterm",
          "NvimTree",
          "vista_kind",
          "dapui_scopes",
          "dapui_breakpoints",
          "dapui_stacks",
          "dapui_watches",
          "dap-repl",
          "Outline"
        },
    }
}
local custom_nord = require'lualine.themes.nord'
custom_nord.normal.b.bg = '#4C566A'
custom_nord.insert.b.bg = '#4C566A'
custom_nord.visual.b.bg = '#4C566A'
custom_nord.replace.b.bg = '#4C566A'
require('lualine').setup{
    options = {
        theme = custom_nord,
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

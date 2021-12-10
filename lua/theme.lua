local vim = vim

-- There are 3 styles: day, night and storm
-- G.tokyonight_style = 'storm'
-- G.tokyonight_italic_comments = true
-- G.tokyonight_italic_keywords = true
-- G.tokyonight_italic_functions = false
-- G.tokyonight_italic_variables = false
-- G.tokyonight_transparent = false
-- G.tokyonight_hide_inactive_statusline = false
-- G.tokyonight_sidebars = {'qf', 'vista_kind', 'terminal', 'packer', 'Outline'}
-- G.tokyonight_dark_sidebar = true
-- G.tokyonight_dark_float = true
-- G.tokyonight_lualine_bold = true

-- +-- Nord --+
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = false
vim.g.nord_italic = false

-- Load the colorscheme
require('nord').set()


-- Hide ~ from end of lines.
vim.opt.fillchars = { eob = " " }

-- Load the colorscheme
vim.cmd[[colorscheme nord]]

function _G.make_codeart_transparent()
    vim.cmd("highlight Normal guibg=NONE guifg=NONE")
    vim.cmd("highlight NormalNc guibg=NONE guifg=NONE")
    vim.cmd("highlight LineNr guibg=NONE guifg=NONE")
    vim.cmd("highlight CursorLineNr guibg=NONE guifg=NONE")
    vim.cmd("highlight SignColumn guibg=NONE guifg=NONE")
    vim.cmd("highlight EndOfBuffer guibg=NONE guifg=NONE")


    vim.cmd("highlight NvimTreeNormal guibg=NONE guifg=NONE")
    vim.cmd("highlight NvimTreeNormalNc guibg=NONE guifg=NONE")
    vim.cmd("highlight NvimTreeEndOfBuffer guibg=NONE guifg=NONE")
    vim.cmd("highlight NvimTreeFolderIcon guibg=NONE guifg=NONE")
    vim.cmd("highlight NvimTreeOpenedFolderName guibg=NONE guifg=NONE")


    vim.cmd("highlight BufferLineFill guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineDiagnostics guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineTab guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineTabSelected guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineTabClose guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineDuplicate guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineDuplicateSelected guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineDuplicateVisible guibg=NONE guifg=NONE")

    vim.cmd("highlight BufferLineBackground guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineCloseButton guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineCloseButtonSelected	 guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineCloseButtonVisible	 guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineBufferVisible guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLinePick guibg=NONE")
    vim.cmd("highlight BufferLinePickSelected guibg=NONE")
    vim.cmd("highlight BufferLineSeperator guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineGroupSeperator guibg=NONE guifg=NONE")
    vim.cmd("highlight bufferlineseperatorvisible guibg=none guifg=none")
    vim.cmd("highlight BufferLineSeparatorSelected guibg=none")
    vim.cmd("highlight BufferLineSeparator guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineIndicatorSelected	 guibg=NONE")
    vim.cmd("highlight BufferLineBufferSelected guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineDiagnostic	 guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineDevIconLuaSelected	 guibg=NONE")
    vim.cmd("highlight BufferLineDevIconDefaultInactive	 guibg=NONE")

    vim.cmd("highlight BufferLineError guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineErrorVisible guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineErrorDiagnosticVisible guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineErrorSelected guibg=NONE")
    vim.cmd("highlight BufferLineErrorDiagnostic guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineErrorDiagnosticSelected guibg=NONE")
    vim.cmd("highlight BufferLineErrorDiagnosticSelected guibg=NONE")

    vim.cmd("highlight BufferLineWarning guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineWarningVisible guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineWarningDiagnosticVisible guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineWarningSelected guibg=NONE")
    vim.cmd("highlight BufferLineWarningDiagnostic guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineWarningDiagnosticSelected guibg=NONE")
    vim.cmd("highlight BufferLineWarningDiagnosticSelected guibg=NONE")

    vim.cmd("highlight BufferLineInfo guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineInfoVisible guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineInfoDiagnosticVisible guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineInfoSelected guibg=NONE")
    vim.cmd("highlight BufferLineInfoDiagnostic guibg=NONE guifg=NONE")
    vim.cmd("highlight BufferLineInfoDiagnosticSelected guibg=NONE")
    vim.cmd("highlight BufferLineInfoDiagnosticSelected guibg=NONE")

    vim.cmd("highlight BufferLineModified guibg=NONE")
    vim.cmd("highlight BufferLineModifiedSelected guibg=NONE")
    vim.cmd("highlight BufferLineModifiedVisible guibg=NONE guifg=NONE")

    vim.cmd("highlight DiagnosticVirtualTextError guibg=NONE")
    vim.cmd("highlight DiagnosticVirtualTextWarn guibg=NONE")
    vim.cmd("highlight DiagnosticVirtualTextHint guibg=NONE")
    vim.cmd("highlight DiagnosticVirtualTextInfo guibg=NONE")

    vim.cmd("highlight NormalFloat guibg=NONE")
    vim.cmd("highlight FloatBorder guibg=#NONE")
    vim.cmd("highlight WhichKeyFloat guibg=NONE")
  end

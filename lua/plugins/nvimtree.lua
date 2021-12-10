-- following options are the default
local tree = {}
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

tree.setup = {
    open_on_setup = false,
    auto_close = true,
    open_on_tab = false,
    update_cwd = true,
    disable_netrw = true,
    hijack_netrw = true,
    ignore_ft_on_setup = { '.git', 'node_modules', '.cache' },
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor = true,
    filters = {
        dotfiles = false,
    },
    update_focused_file = {
      enable = true,
    },
    diagnostics = {
      enable = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    view = {
      width = "24%",
      side = "left",
      auto_resize = false,
      mappings = {
        list = {
          {key = "<C-h>", cb = tree_cb("toggle_dotfiles")},
        }
      },
    },
}
local M = {}

function M.setup()

  G.nvim_tree_gitignore = { ".git", "node_modules", ".cache", "__pycache__"} --0 by default
  G.nvim_tree_quit_on_open = 0 --0 by default, closes the tree when you open a file
  G.nvim_tree_indent_markers = 1 --0 by default, this option shows indent markers when folders are open
  G.nvim_tree_git_hl = 1 --0 by default, will enable file highlight for git attributes (can be used without the icons).
  G.nvim_tree_highlight_opened_files = 1 --0 by default, will enable folder and file icon highlight for opened files/directories.
  -- G.nvim_tree_root_folder_modifier = ':t' --This is the default. See :help filename-modifiers for more options
  G.nvim_tree_add_trailing = 1 --0 by default, append a trailing slash to folder names
  G.nvim_tree_group_empty = 1 -- 0 by default, compact folders that only contain a single folder into one node in the file tree
  G.nvim_tree_disable_window_picker = 0 --0 by default, will disable the window picker.
  G.nvim_tree_icon_padding = ' ' --one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
  G.nvim_tree_symlink_arrow = ' ➛ ' -- defaults to ' ➛ '. used as a separator between symlinks' source and target.
  G.nvim_tree_respect_buf_cwd = 1 --0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
  G.nvim_tree_create_in_closed_folder = 0 --1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
  G.nvim_tree_refresh_wait = 500 --1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
  G.nvim_tree_window_picker_exclude = {
    filetype = {
        'notify',
        'packer',
        'qf'
    },
    buftype = {
        'terminal'
    }
  }
  -- Dictionary of buffer option names mapped to a list of option values that
  -- indicates to the window picker that the buffer's window should not be
  -- selectable.
  CMD [[ let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } ]]-- List of filenames that gets highlighted with NvimTreeSpecialFile
  G.nvim_tree_show_icons = {
      git = 1,
      folders = 1,
      files = 1,
      folder_arrows = 1,
      tree_width = 30,
  }
  --If 0, do not show the icons for one of 'git' 'folder' and 'files'
  --1 by default, notice that if 'files' is 1, it will only display
  --if nvim-web-devicons is installed and on your runtimepath.
  --if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
  --but this will not work when you set indent_markers (because of UI conflict)

  -- default will show icon by default if no icon is provided
  -- default shows no icon by default
  G.nvim_tree_icons = {
      default = "",
      symlink = "",
      git = {
        unstaged = "",
        staged = "S",
        unmerged = "",
        renamed = "➜",
        deleted = "",
        untracked = "U",
        ignored = "◌",
      },
      folder = {
        arrow_open = '',
        arrow_closed = '',
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
      },
  }

  require("nvim-tree").setup(tree.setup)
end


M.setup()

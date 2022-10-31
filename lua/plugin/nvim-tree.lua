local status, nvim_tree = pcall(require, "nvim-tree")
local keybinding = require("keybind").nvim_tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
nvim_tree.setup({
  auto_reload_on_write = true,
  create_in_closed_folder = false,
  disable_netrw = true,
  view = {
    side = "left",
    hide_root_folder = false,
    adaptive_size = true,
    mappings = {
      custom_only = true,
      list = keybinding,
    },
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
      },
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  git = {
    enable = true,
    ignore = true,
    show_on_dirs = true,
    timeout = 400,
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    dotfiles = true,
    custom = { "node_modules", "__pycache__" },
    exclude = { ".gitignore", ".vscode" },
  },
  actions = {
    open_file = {
      resize_window = true,
      quit_on_open = false,
    },
  },
  system_open = {
    cmd = "open",
  },
})

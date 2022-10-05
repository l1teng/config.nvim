local status, nvim_tree = pcall(require, "nvim-tree")

local keybinding = require("keybind").nvim_tree

nvim_tree.setup({
  disable_netrw = true,
  git = {
    enable = true,
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    dotfiles = true,
    custom = { "node_modules" },
  },
  view = {
    width = 34,
    side = "left",
    hide_root_folder = false,
    mappings = {
      custom_only = true,
      list = keybinding,
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes",
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

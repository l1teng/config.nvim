local status, treesitter = pcall(require, "nvim-treesitter.configs")

treesitter.setup {
  ensure_installed = {
    "html", "css", "javascript", "typescript", "vue", "json",
    "vim", "lua",
    "java", "kotlin",
    "latex", "yaml",
    "c", "cmake", "cpp", "dockerfile",
    "python"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
      scope_incremental = "<TAB>",
    }
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    colors = {
      "#95ca60",
      "#ee6985",
      "#D6A760",
      "#7794f4",
      "#b38bf5",
      "#7cc7fe",
    },
  },
}
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel = 99

local vim = vim

local os_spec = vim.loop.os_uname().sysname

if os_spec == "Darwin" then
  -- brew install skim
  vim.g.vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
  vim.g.vimtex_view_general_options = '-r @line @pdf @tex'
  vim.cmd("source ~/.config/nvim/lua/plugin/vimtex_mac.vim")
end


local bufferline = require("bufferline")

bufferline.setup({
  options = {
    numbers = "buffer_id",
    indicator = {
      style = 'underline',
    },
    buffer_close_icon = '',
    tab_size = 12,
    diagnostics = "nvim_lsp",
    offsets = { {
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left",
    } },
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end
  },
})

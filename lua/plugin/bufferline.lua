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
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " " or (e == "warning" and " " or "")
        s = s .. n .. sym
      end
      return s
    end,
  },
})

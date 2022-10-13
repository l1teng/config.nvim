local tele = require("telescope")

local config = {
  defaults = {
    mappings = {
      i = {}
    }
  },
  pickers = {
    find_files = {
      follow = true, -- follow symlinks
    }
  },

  extensions = {}
}

tele.setup(config)

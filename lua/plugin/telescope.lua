local status, tele = pcall(require, "telescope")

local config = {
  defaults = {
    mappings = {
      i = {}
    }
  },
  pickers = {},
  extensions = {}
}

tele.setup(config)

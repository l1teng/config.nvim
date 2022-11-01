require("plugin.theme")

--bufferline
require("plugin.bufferline")
-- bdelete, loaded silently

-- nvim-tree
require("plugin.nvim-tree")

-- nvim-treesitter, require { "nvim-tree/nvim-web-devicons" }
require("plugin.treesitter")
require("nvim-treesitter.install").update()
-- comment
require("plugin.comment")
require("todo-comments").setup()
-- indent-blankline
require("plugin.indent-blankline")
-- autopairs
require("nvim-autopairs").setup()

-- telescope, require {"nvim-lua/plenary.nvim"}
require("plugin.telescope")
-- which-key
require("plugin.which-key")
-- tmux
require("plugin.tmux")
-- hop
require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
-- gitsigns
require("plugin.gitsigns")

-- mason
require("plugin.mason")

require("fidget").setup({})
require("plugin.lsp-signature")
require("lspsaga").init_lsp_saga()

require("plugin.cmp")

require("plugin.vimtex")

require("plugin.dap")


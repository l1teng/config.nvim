-- zephyr
require("zephyr")

-- bufexplorer
vim.cmd("source " .. vim.fn.stdpath("config") .. "/pack/fork/start/bufexplorer/plugin/bufexplorer.vim")
--bufferline
require("plugin.bufferline")
-- bdelete, loaded silently

-- nvim-tree
require("plugin.nvim-tree")
-- nvim-treesitter
require("plugin.treesitter")
require("nvim-treesitter.install").update()
-- comment
require("plugin.comment")
-- indent-blankline
require("plugin.indent-blankline")
-- telescope, require {"nvim-lua/plenary.nvim"}
require("plugin.telescope")
-- which-key
require("plugin.which-key")
-- tmux
require("plugin.tmux")
-- hop
require("hop").setup({ keys = 'etovxqpdygfblzhckisuran' })
-- gitsigns
require("plugin.gitsigns")
-- autopairs
require("nvim-autopairs").setup()

-- mason
-- lsp require {"neovim/nvim-lspconfig", "williamboman/mason-lspconfig.nvim"}
-- lint & formatter require {"jose-elias-alvarez/null-ls.nvim", "jayp0521/mason-null-ls.nvim"}
require("plugin.mason")

require "fidget".setup {}
require("plugin.lsp-signature")
require("plugin.goto-preview")

require("plugin.cmp")


-- {"github/copilot.vim"}

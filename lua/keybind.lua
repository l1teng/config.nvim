local vim = vim

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local K = {}

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "<leader>w", ":w<CR>", opt)
map("n", "<leader><CR>", ":noh<CR>", opt)
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- adjust size of windows
map("n", "<leader><C-l>", ":vertical resize +20<CR>", opt)
map("n", "<leader><C-h>", ":vertical resize -20<CR>", opt)
map("n", "<leader><C-=>", "<C-w>=", opt)
map("n", "<leader><C-k>", ":resize +10<CR>", opt)
map("n", "<leader><C-j>", ":resize -10<CR>", opt)
-- tab
map("n", "<C-t>c", ":tabclose<CR>", opt)
map("n", "<C-t>n", ":tabnew<CR>", opt)
map("n", "<C-t>l", ":tabnext<CR>", opt)
map("n", "<C-t>h", ":tabprevious<CR>", opt)
-- yank past
map("v", "<leader>y", "\"+y", opt)
map("v", "<leader>p", "\"+p", opt)
-- window close
map("", "<C-w>c", ":close<CR>", opt)

-- bufdel
map("n", "<C-w>d", ":Bdelete<CR>", opt)
-- bufexplorer
map("n", "<C-w>b", ":BufExplorer<CR>", opt)
-- bufferline
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- comment
K.comment = {
  toggler = {
    line = "gcc",
    block = "gbc",
  },
  opleader = {
    line = "gc",
    bock = "gb",
  },
}
-- hop
map("n", "fw", ":HopWord<CR>", opt)
-- nvim-tree
map("n", "<leader>nn", ":NvimTreeFocus<CR>", opt)
map("n", "<leader>nt", ":NvimTreeToggle<CR>", opt)
K.nvim_tree = {
  { key = "o", action = "edit" },
  { key = "C", action = "cd" },
  { key = "<", action = "prev_sibling" },
  { key = ">", action = "next_sibling" },
  { key = "P", action = "parent_node" },
  { key = "K", action = "first_sibling" },
  { key = "J", action = "last_sibling" },
  { key = "I", action = "toggle_git_ignored" },
  { key = "H", action = "toggle_dotfiles" },
  { key = "R", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "y", action = "copy_path" },
  { key = "Y", action = "copy_absolute_path" },
  { key = "U", action = "dir_up" },
  { key = "f", action = "live_filter" },
  { key = "F", action = "clear_live_filter" },
  { key = "q", action = "close" },
  { key = "W", action = "collapse_all" },
  { key = "E", action = "expand_all" },
  { key = "S", action = "search_node" },
  { key = "g?", action = "toggle_help" },
  { key = "m", action = "toggle_mark" },
  { key = "bmv", action = "bulk_move" },
}
-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opt)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opt)
map("n", "<leader>fb", ":Telescope buffers<CR>", opt)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opt)
-- mason
K.mason = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', '<leader>gd', "<Cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
  vim.keymap.set('n', '<leader>gh', "<Cmd>lua vim.lsp.buf.hover()<CR>", bufopts)
  -- vim.keymap.set('n', 'gh', "<Cmd>lua vim.lsp.buf.signature_help()<CR>", bufopts)
  vim.keymap.set('n', '<space>ca', "<Cmd>lua vim.lsp.buf.code_action()<CR>", bufopts)
  vim.keymap.set('n', '<leader>gi', "<Cmd>lua vim.lsp.buf.implementation()<CR>", bufopts)
  -- vim.keymap.set('n', 'gl', "<Cmd>lua vim.lsp.buf.incoming_calls()<CR>", bufopts)
  -- vim.keymap.set('n', 'gd', "<Cmd>lua vim.lsp.buf.type_definition()<CR>", bufopts)
  vim.keymap.set('n', '<leader>gr', "<Cmd>lua vim.lsp.buf.references()<CR>", bufopts)
  vim.keymap.set('n', '<leader>rn', "<Cmd>lua vim.lsp.buf.rename()<CR>", bufopts)
  vim.keymap.set('n', '<leader>fm', "<Cmd>lua vim.lsp.buf.formatting()<CR>", bufopts)
  -- vim.keymap.set('n', 'gs', "<Cmd>lua vim.lsp.buf.document_symbol()<CR>", bufopts)
  -- vim.keymap.set('n', 'gw', "<Cmd>lua vim.lsp.buf.workspace_symbol()<CR>", bufopts)
  vim.keymap.set('n', 'gp', "<Cmd>lua vim.diagnostic.goto_prev()<CR>", bufopts)
  vim.keymap.set('n', 'gn', "<Cmd>lua vim.diagnostic.goto_next()<CR>", bufopts)
  vim.keymap.set('n', 'go', "<Cmd>lua vim.diagnostic.open_float()<CR>", bufopts)
  -- vim.keymap.set('n', 'gs', "<Cmd>lua vim.diagnostic.show()<CR>", bufopts)

  -- vim.api.nvim_create_autocmd("BufWritePre", {
  --   pattern = {
  --     "*"
  --   },
  --   command = [[lua vim.lsp.buf.formatting_sync()]]
  -- })
end
-- lsp.goto_preview
map("n", "gd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", opt)
map("n", "gd", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", opt)
map("n", "gi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", opt)
map("n", "gc", "<cmd>lua require('goto-preview').close_all_win()<CR>", opt)
map("n", "gr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", opt)
-- cmp
K.cmp = function(cmp)
  return {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<CR>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end
-- gitsigns
K.gitsigns = function(bufnr)
  local gs = package.loaded.gitsigns

  local function _map_gsigns(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, l, r, opts)
  end

  -- Navigation
  _map_gsigns('n', ']c', function()
    if vim.wo.diff then return ']c' end
    vim.schedule(function() gs.next_hunk() end)
    return '<Ignore>'
  end, { expr = true })

  _map_gsigns('n', '[c', function()
    if vim.wo.diff then return '[c' end
    vim.schedule(function() gs.prev_hunk() end)
    return '<Ignore>'
  end, { expr = true })

  -- Actions
  _map_gsigns({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>')
  _map_gsigns({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>')
  _map_gsigns('n', '<leader>hS', gs.stage_buffer)
  _map_gsigns('n', '<leader>hu', gs.undo_stage_hunk)
  _map_gsigns('n', '<leader>hR', gs.reset_buffer)
  _map_gsigns('n', '<leader>hp', gs.preview_hunk)
  _map_gsigns('n', '<leader>hb', function() gs.blame_line { full = true } end)
  _map_gsigns('n', '<leader>tb', gs.toggle_current_line_blame)
  _map_gsigns('n', '<leader>hd', gs.diffthis)
  _map_gsigns('n', '<leader>hD', function() gs.diffthis('~') end)
  _map_gsigns('n', '<leader>td', gs.toggle_deleted)

  -- Text object
  _map_gsigns({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
end

return K

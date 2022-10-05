local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local nullls = require("null-ls")
local mason_nullls = require("mason-null-ls")

mason.setup()
local servers = {
  sumneko_lua = require "lspconfig.server_configurations.sumneko_lua",
  clangd = require "lspconfig.server_configurations.clangd",
  texlab = require "lspconfig.server_configurations.texlab",
  pyright = require "lspconfig.server_configurations.pyright",
  -- jedi_language_server = require "lspconfig.server_configurations.jedi_language_server",
  yamlls = require "lspconfig.server_configurations.yamlls",
  zk = require "lspconfig.server_configurations.zk",
  bashls = require "lspconfig.server_configurations.bashls",
  html = require "lspconfig.server_configurations.html",
  jsonls = require "lspconfig.server_configurations.jsonls",
}
mason_lspconfig.setup({
  ensure_installed = { "sumneko_lua", "pyright" }
})
mason_lspconfig.setup_handlers({
  function(server)
    require("lspconfig")[server].setup({ on_attach = require("keybind").mason })
  end,
})

mason_nullls.setup({
  ensure_installed = {
    'stylua', 'jq',
    "black", "isort", "pylint"
  }
})
mason_nullls.setup_handlers({
  function(source_name)
    -- all sources with no handler get passed here
  end,
  stylua = function()
    nullls.register(nullls.builtins.formatting.stylua)
  end,
  jq = function()
    nullls.register(nullls.builtins.formatting.jq)
  end,
  black = function()
    nullls.register(nullls.builtins.formatting.black)
  end,
  isort = function()
    nullls.register(nullls.builtins.formatting.isort)
  end,
  pylint = function()
    nullls.register(nullls.builtins.diagnostics.pylint)
  end,
})
nullls.setup()

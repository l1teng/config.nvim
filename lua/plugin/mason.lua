local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local nullls = require("null-ls")
local mason_nullls = require("mason-null-ls")

mason.setup()
local servers = {
  sumneko_lua = require("lspconfig.server_configurations.sumneko_lua"),
  clangd = require("lspconfig.server_configurations.clangd"),
  cmake = require("lspconfig.server_configurations.cmake"),
  texlab = require("lspconfig.server_configurations.texlab"),
  pyright = require("lspconfig.server_configurations.pyright"),
  yamlls = require("lspconfig.server_configurations.yamlls"),
  zk = require("lspconfig.server_configurations.zk"),
  bashls = require("lspconfig.server_configurations.bashls"),
  html = require("lspconfig.server_configurations.html"),
  cssls = require("lspconfig.server_configurations.cssls"),
  jsonls = require("lspconfig.server_configurations.jsonls"),
  dockerls = require("lspconfig.server_configurations.dockerls"),
  jdtls = require("lspconfig.server_configurations.jdtls"),
  gopls = require("lspconfig.server_configurations.gopls"),
  taplo = require("lspconfig.server_configurations.taplo"),
}

local _servers = function(t)
  local keys = {}
  for key, _ in pairs(t) do
    table.insert(keys, key)
  end
  return keys
end

mason_lspconfig.setup({
  ensure_installed = _servers(servers),
})
mason_lspconfig.setup_handlers({
  function(server)
    require("lspconfig")[server].setup({ on_attach = require("keybind").mason })
  end,
})

mason_nullls.setup({
  ensure_installed = {
    "stylua",
    "jq",
    "autopep8",
    "black",
    "isort",
    "pylint",
    "clang_format",
    "prettier",
  },
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
  autopep8 = function()
    nullls.register(nullls.builtins.formatting.autopep8)
  end,
  black = function()
    nullls.register(nullls.builtins.formatting.black)
  end,
  isort = function()
    nullls.register(nullls.builtins.formatting.isort)
  end,
  clang_format = function()
    nullls.register(nullls.builtins.formatting.clang_format)
  end,
  prettier = function()
    nullls.register(nullls.builtins.formatting.prettier)
  end,
  -- pylint = function()
  --   nullls.register(nullls.builtins.diagnostics.pylint)
  -- end,
})
nullls.setup()

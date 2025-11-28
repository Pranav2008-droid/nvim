require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "pyright" }
})

local lspconfig = require("lspconfig")

-- Manually set up each LSP server
local servers = { "pyright" }

for _, server in ipairs(servers) do
  lspconfig[server].setup({})
end


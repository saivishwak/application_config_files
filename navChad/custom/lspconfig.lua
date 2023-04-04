-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {"html", "rust_analyzer", "tsserver"}

for _, lsp in ipairs(servers) do
  if lsp == 'rust_analyzer' then
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy",
          },
        }
    }
  }
else
lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
  end
end

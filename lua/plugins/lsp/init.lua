local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local servers = {
  "clangd",
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("plugins.lsp.handlers").on_attach,
		capabilities = require("plugins.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]
	lspconfig[server].setup(opts)
end
-- require "plugins.lsp.mason"
require("plugins.lsp.handlers").setup()
require "plugins.lsp.null-ls"



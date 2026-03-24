-- JS/TS/React
require('lspconfig').tsserver.setup {}

-- Ruby
require("lspconfig").solargraph.setup({
  filetypes = { "ruby", "eruby" },
})

-- use mason-lspconfig to configure LSP installations
return {
  automatic_installation = true,
  ensure_installed = {
    "bashls",
    "clangd",
    "cssls",
    "emmet_ls",
    "html",
    "jsonls",
    "pyright",
    "sumneko_lua",
    "tailwindcss",
    "tsserver",
    "yamlls",
    "zk",
  },
}

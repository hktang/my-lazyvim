print("✅ plugins/php.lua loaded")
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = false,
        intelephense = {}, -- enables the server
      },
    },
  },
}

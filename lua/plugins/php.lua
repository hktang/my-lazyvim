print("✅ plugins/php.lua loaded")
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              telemetry = {
                enabled = false,
              },
              files = {
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
}

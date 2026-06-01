return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mason-org/mason.nvim",
    },
    config = function()
      local dap = require("dap")

      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = {
          require("mason-registry").get_package("php-debug-adapter"):get_install_path()
            .. "/extension/out/phpDebug.js",
        },
      }

      dap.configurations.php = {
        {
          type = "php",
          request = "launch",
          name = "Listen for Xdebug (DDEV)",
          port = 9003,
          pathMappings = {
            ["/var/www/html"] = "${workspaceFolder}",
          },
        },
      }
    end,
  },
}

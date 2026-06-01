return {
  "maso-org/mason.nvim",
  opts = function(_, opts)
    -- This makes sure the list exists before we add to it
    opts.ensure_installed = opts.ensure_installed or {}
    -- This adds the JS debugger to the list of things Mason will install
    table.insert(opts.ensure_installed, "js-debug-adapter")
    table.insert(opts.ensure_installed, "php-debug-adapter")
  end,
}

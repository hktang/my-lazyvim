return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufWritePost" },
  config = function()
    require("lint").linters_by_ft = {
      python = { "ruff" }, -- or "flake8"
    }

    -- Auto-lint on save
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}


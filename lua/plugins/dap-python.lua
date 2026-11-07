return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    -- Use the project's venv so Django/DRF are importable
    local venv = vim.fs.find(".venv", {
      upward = true,
      type = "directory",
      path = vim.fn.expand "%:p:h",
    })[1]
    local python = venv and (venv .. "/bin/python") or "python3"
    require("dap-python").setup(python)

    -- Use pytest for test debugging instead of unittest
    require("dap-python").test_runner = "pytest"

    -- Django dev server config
    local dap = require "dap"
    table.insert(dap.configurations.python, {
      type = "python",
      request = "launch",
      name = "Django: runserver",
      program = "${workspaceFolder}/manage.py",
      args = { "runserver", "--noreload" },
      django = true,
      justMyCode = false, -- lets you step into DRF / site-packages code
    })
  end,
}

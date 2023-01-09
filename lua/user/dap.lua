-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation

local dap = require('dap')

dap.adapters.mix_task = {
  type = 'executable',
  command = '/home/bobek/.local/share/nvim/mason/packages/elixir-ls/debugger.sh', -- debugger.bat for windows
  args = {}
}

dap.configurations.elixir = {
  {
    type = "mix_task",
    name = "mix test",
    task = 'test',
    -- task = 'phx.server',
    taskArgs = { "--trace" },
    request = "launch",
    startApps = true, -- for Phoenix projects
    projectDir = "${workspaceFolder}",
    requireFiles = {
      "test/**/test_helper.exs",
      "test/**/*_test.exs"
    }
  },
}

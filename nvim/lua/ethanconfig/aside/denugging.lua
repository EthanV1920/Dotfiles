local dap = require("dap")
local dapui = require("dapui").setup();
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

dap.adapters.lldb = {
    type = 'executable',
    command = '/opt/homebrew/opt/llvm/bin/lldb-dap', -- adjust as needed, must be absolute path
    name = 'lldb'
}


dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            return '/opt/homebrew/opt/python3'
        end,
    },
}

dap.configurations.cpp = {
    {
        name = 'Launch',
        type = 'lldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = function()
            return vim.split(vim.fn.input('Arguments: '), " ")
        end,
    },

}

dap.configurations.c = dap.configurations.cpp


vim.fn.sign_define('DapBreakpoint', 
    {
        text='🔴', -- nerdfonts icon here
        texthl='DapBreakpointSymbol', 
        linehl='DapBreakpoint', 
        numhl='DapBreakpoint'
    })
vim.fn.sign_define('DapStopped', 
    {
        text='➡️', -- nerdfonts icon here
        texthl='DapStoppedSymbol', 
        linehl='DapBreakpoint', 
        numhl='DapBreakpoint'
    })

-- vim.keymap.set("n", "<Leader>du", dapui.toggle())

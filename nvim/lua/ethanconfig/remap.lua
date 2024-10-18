vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q", "<nop>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>po", vim.cmd.TodoTelescope)

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Actually the greatest remap ever
vim.keymap.set("i", "<A-BS>", "<C-w>")

-- Actually the greatest movement remap ever
vim.keymap.set("n", "<M>j", "10j")
vim.keymap.set("n", "<M>k", "10k")

-- Actually an ok ANSI C comment
vim.keymap.set({"n", "v"}, "<leader>gc", "^vg_gb")

vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>dt', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>du', function() require('dapui').toggle() end)


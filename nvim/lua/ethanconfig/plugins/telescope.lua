-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
-- return {
--     'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- -- or                              , branch = '0.1.x',
--       dependencies = { 'nvim-lua/plenary.nvim' }
--     }
--
return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup()

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>pg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>pb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
        -- keymap.set("n", "<leader>ps", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
        -- keymap.set("n", "<leader>pc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
    end,
}

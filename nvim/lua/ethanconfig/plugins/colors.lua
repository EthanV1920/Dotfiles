-- function ColorMyPencils(color)
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 
--
-- end
--
-- ColorMyPencils()

return{ "rose-pine/neovim", name = "rose-pine" }

-- return {
--     "norcalli/nvim-colorizer.lua",
--     config = function()
--         require("colorizer").setup({ "*" })
--     end,
-- }

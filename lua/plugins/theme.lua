local transparency = require("utils.transparency")

return {
	{
		"folke/tokyonight.nvim",
		enabled = false,
		lazy = true,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("tokyonight")
			transparency.enable()
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		config = function()
			local rose_pine = require("rose-pine")
			rose_pine.setup({
				styles = {
					italic = false,
					bold = false,
				},
			})
			vim.cmd.colorscheme("rose-pine")
			transparency.enable()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "tokyonight",
		},
	},
}

local transparency = require("utils.transparency")

return {
    {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	    vim.cmd.colorscheme "tokyonight"
	    transparency.enable()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = "tokyonight",
	}
    }
}

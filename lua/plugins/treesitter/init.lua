return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			modules = {},
			auto_install = false,
			sync_install = false,
			ignore_install = {},
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotage = { enable = true },
			ensure_installed = {
				"lua",
				"cpp",
				"rust",
			},
		})
	end,
}

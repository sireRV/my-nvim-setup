return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
	"nvim-tree/nvim-web-devicons",
    },
    config = function()
	local nvim_tree = require("nvim-tree")
	nvim_tree.setup({
	    view = {
		adaptive_size = true,
	    },
	})
	require("plugins/nvim-tree/keymaps").setup()
    end
}

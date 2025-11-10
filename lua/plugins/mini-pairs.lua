return {
	"nvim-mini/mini.pairs",
	version = "*",
	config = function()
		local mini_pairs = require("mini.pairs")
		mini_pairs.setup()
	end,
}

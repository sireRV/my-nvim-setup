local M = {}

M.enable = function()
    local groups = {
	"Normal",
	"NormalNC",
	"NormalFloat",
	"SignColumn",
	"NvimTreeNormal",
	"NvimTreeNormalNC",
	"NvimTreeEndOfBuffer",
    }

    for _, group in ipairs(groups) do
	vim.api.nvim_set_hl(0, group, {bg = "none"})
    end
end

return M

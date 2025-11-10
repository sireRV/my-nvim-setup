-- lua/plugins/blink.lua
return {
	"saghen/blink.cmp",
	event = "InsertEnter",
	opts = {
		fuzzy = {
			implementation = "lua",
		},
		keymap = {
			preset = "none", -- <C-Space> triggers, <CR> accepts

			["<Tab>"] = { "select_next" },
			["<S-Tab>"] = { "select_prev" },
			["<CR>"] = { "accept" },
			["<C-e>"] = { "hide" },
		},
		completion = {
			keyword_length = 1,
			trigger_on_delete = true,
			documentation = { auto_show = true, border = "rounded" },
			menu = { border = "rounded" },
		},
		sources = {
			-- ✅ Only intelligent sources, no snippets
			default = { "lsp", "path" },
		},
	},
	config = function(_, opts)
		local blink = require("blink.cmp")
		blink.setup(opts)

		-- 🧠 Hook into all LSPs for enhanced completion
		local capabilities = blink.get_lsp_capabilities()
		vim.lsp.config("*", { capabilities = capabilities })

		-- Optional keymaps for manual control
		--   vim.keymap.set("i", "<C-Space>", function() blink.show() end, { desc = "Trigger completion" })
		--   vim.keymap.set("i", "<CR>", function() blink.accept() end, { desc = "Accept completion" })
	end,
}

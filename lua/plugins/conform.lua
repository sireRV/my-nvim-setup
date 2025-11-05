-- lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  event = "BufWritePre", -- run before saving buffer
  opts = {
    -- 🔧 Language to formatter mapping
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt" },
      go = { "goimports" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      json = { "prettier" },
    },

    -- 🧠 When to format
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true, -- use LSP if formatter not found
    },
  },

  config = function(_, opts)
    require("conform").setup(opts)

    -- Optional: Add a manual keymap for formatting
    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format buffer" })
  end,
}


-- lua/plugins/lsp/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      -- Load keymaps + diagnostics
      require("plugins.lsp.keymaps").setup()

      -- Register your LSP servers
--      vim.lsp.enable("lua_ls")
--      vim.lsp.enable("rust-analyzer")
      -- add more as needed
    end,
  },
}


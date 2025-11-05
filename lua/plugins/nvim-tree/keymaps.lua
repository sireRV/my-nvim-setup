local M = {}

M.setup = function()
    --Nvim Tree Explorer shortcuts
    vim.keymap.set("n","<leader>e","<Cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer"})
    vim.keymap.set("n","<leader>m","<Cmd>NvimTreeFocus<CR>", { desc = "Focus on File Explorer"})
end

return M

-- Helper function to let Telescope fall back to file search outside git repos
ProjectFiles = function()
  local opts = {} -- define telescope options
  local ok = pcall(require("telescope.builtin").git_files, opts)
  if not ok then
    require("telescope.builtin").find_files(opts)
  end
end

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "i", "v" }, "jk", "<ESC>", { silent = true }) -- Escape from insert mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move visual selection downward
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move visual selection upward
vim.keymap.set("n", "J", "mzJ`z") -- Join line with the next, adding a space between and keeping the cursor in place
vim.keymap.set({ "n", "v" }, "<C-j>", ":bnext<CR>", { silent = true }) -- Go to next buffer
vim.keymap.set({ "n", "v" }, "<C-k>", ":bprevious<CR>", { silent = true }) -- Go to previous buffer
vim.keymap.set({ "n" }, "<C-l>", "<cmd>lua vim.diagnostic.goto_next()<CR>", { silent = true }) -- Go to next diagnostic
vim.keymap.set({ "n" }, "<C-h>", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { silent = true }) -- Go to previous diagnostic
vim.keymap.set({ "n" }, "<C-p>", "<cmd>lua ProjectFiles()<CR>", { silent = true }) -- Project files search

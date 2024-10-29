local silent = { noremap = true, silent = true }
local default = { noremap = true }

-- Explorer
vim.keymap.set("n", "<Leader>d", ":Fex<CR>", silent)
-- Buffers
vim.keymap.set("n", "<Leader>b", ":buffer ", default)
vim.keymap.set("n", "[b", ":bprevious<CR>", silent)
vim.keymap.set("n", "]b", ":bNext<CR>", silent)

local map = vim.api.nvim_set_keymap

options = {noremap = true}
map("i", "jj", "<esc>", options)
map("i", "jk", "<esc>", options)
map("n", "j", "gj", options)
map("n", "k", "gk", options)

map("n", "<leader>w", ":w<cr>", options)
map("n", "<leader>q", ":q<cr>", options)
map("n", "<leader>e", ":BufferNext<cr>", options)
map("n", "<leader>p", ":BufferPrevious<cr>", options)
map("n", "<leader>c", ":BufferClose<cr>", options)

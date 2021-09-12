local map = vim.api.nvim_set_keymap

options = {noremap = true}
map("n", "<c-t>", ":TagbarToggle<cr>", options)

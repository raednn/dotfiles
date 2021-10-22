local map = vim.api.nvim_set_keymap
local view = require "nvim-tree.view"

vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_root_folder_mofifier = ":t:r"

require "nvim-tree".setup {
  disable_netrw = true,
  update_cwd = true,
  auto_open = true,
  auto_close = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  }
}

function toggle_tree()
  if view.win_open() then
    require "nvim-tree".close()
    require "bufferline.state".set_offset(0)
  else
    require "bufferline.state".set_offset(30, "File Explorer")
    require "nvim-tree".find_file(true)
  end
end

-- Mappings
options = {noremap = true}
map("n", "<c-n>", ":lua toggle_tree()<cr>", options)

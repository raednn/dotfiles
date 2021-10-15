vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1

local map = vim.api.nvim_set_keymap
local view = require "nvim-tree.view"

require "nvim-tree".setup {
  disable_netrw = true,
  update_cwd = true
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

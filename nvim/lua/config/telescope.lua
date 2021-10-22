local map = vim.api.nvim_set_keymap

local actions = require "telescope.actions"
require "telescope".setup {
  defaults = {
    initial_mode = "normal",
    mappings = {
      n = {
        ["q"] = actions.close,
        ["<c-c>"] = actions.close
      }
    },
    file_ignore_patterns = {"node_modules", "fonts", "icons"}
  }
}
require "telescope".load_extension "projects"

options = {noremap = true}

-- Fallback to find_files() if git_files() can't find a .git directory
function project_files()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require "telescope.builtin".git_files, opts)
  if not ok then
    require "telescope.builtin".find_files(opts)
  end
end

function find_projects()
  if vim.fn.argc() == 0 then
    require("telescope").extensions.projects.projects()
  end
end

-- Search for projects if no arguments is passed when opening vim
vim.cmd [[autocmd VimEnter * lua find_projects()]]

-- Mappings
map("n", ",fb", "<cmd>Telescope file_browser<cr>", options)
map("n", ",fl", "<cmd>Telescope live_grep<cr>", options)
map("n", ",fs", "<cmd>Telescope grep_string<cr>", options)
map("n", ",fn", "<cmd>Telescope help-tags<cr>", options)
map("n", ",b", "<cmd>Telescope buffers<cr>", options)
-- LSP
map("n", ",gd", "<cmd>Telescope lsp_definitions<cr>", options)
map("n", ",gi", "<cmd>Telescope lsp_implementations<cr>", options)
map("n", ",r", "<cmd>Telescope lsp_references<cr>", options)
map("n", ",NN", "<cmd>Telescope keymaps<cr>", options)
-- Git
map("n", ",gc", "<cmd>Telescope git_commits<cr>", options)
map("n", ",gbc", "<cmd>Telescope git_bcommits<cr>", options)
map("n", ",gs", "<cmd>Telescope git_status<cr>", options)
map("n", ",gbb", "<cmd>Telescope git_branches<cr>", options)
-- Extensions
map("n", ",p", "<cmd>Telescope projects<cr>", options)
-- Custom
map("n", "<c-p>", "<cmd>lua project_files()<cr>", options)

Mapper = require "nvim-mapper"

-- LSP
Mapper.map_buf(
  bufnr,
  "n",
  "gd",
  "<cmd>lua vim.lsp.buf.definition()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_definitions",
  "Jumps to the definition of the symbol under the cursor"
)

Mapper.map_buf(
  bufnr,
  "n",
  "gD",
  "<cmd>lua vim.lsp.buf.declaration()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_declaration",
  "Jumps to the declaration of the symbol under the cursor"
)

Mapper.map_buf(
  bufnr,
  "n",
  "gr",
  "<cmd>lua vim.lsp.buf.references()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_references",
  "Lists all the references to the symbol under the cursor in the quickfix window"
)

Mapper.map_buf(
  bufnr,
  "n",
  "K",
  "<cmd>lua vim.lsp.buf.hover()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_hover",
  "Displays hover information about the symbol under the cursor in a floating window. Calling the function twice will jump into the floating window"
)

Mapper.map_buf(
  bufnr,
  "n",
  "gi",
  "<cmd>lua vim.lsp.buf.implementation()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_implementation",
  "Lists all the implementation for the symbol under the cursor in the quickfix window"
)

Mapper.map_buf(
  bufnr,
  "n",
  "<c-k>",
  "<cmd>lua vim.lsp.buf.signature_help()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_signature_help",
  "Displays signature information about the symbol under the cursor in a floating window"
)

Mapper.map_buf(
  bufnr,
  "n",
  "<leader>D",
  "<cmd>lua vim.lsp.buf.type_definition()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_type_definition",
  "Jumps to the definition of the type of the symbol under the cursor"
)

Mapper.map_buf(
  bufnr,
  "n",
  "<leader>rn",
  "<cmd>lua vim.lsp.buf.rename()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_rename",
  "Renames all references to the symbol under the cursor"
)

Mapper.map_buf(
  bufnr,
  "n",
  "[d",
  "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_diagnostic_goto_prev",
  "Move to the previous diagnostic"
)

Mapper.map_buf(
  bufnr,
  "n",
  "]d",
  "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>",
  {noremap = true, silent = true},
  "LSP",
  "lsp_diagnostic_goto_next",
  "Move to the next diagnostic"
)

-- Telescope
Mapper.map_buf(
  bufnr,
  "n",
  ",fb",
  "<cmd>Telescope file_browser<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_file_browser",
  "Lists files and folders in your current working directory, open files, navigate your filesystem, and create new files and folders"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",fl",
  "<cmd>Telescope live_grep<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_live_grep",
  "Search for a string in your current working directory and get results live as you type (respecting .gitignore)"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",fs",
  "<cmd>Telescope grep_string<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_grep_string",
  "Search for the string under your cursor in your current working directory"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",b",
  "<cmd>Telescope buffers<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_buffers",
  "Lists open buffers in current neovim instance"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",ff",
  "<cmd>lua require 'config/telescope'.project_files()<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_find",
  "Find files in git project and fallback to files if .git directory not present"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",p",
  "<cmd>Telescope projects<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_projects",
  "Lists previously opened projects and allow to cd into them"
)

-- Telescope-LSP
Mapper.map_buf(
  bufnr,
  "n",
  ",gd",
  "<cmd>Telescope lsp_definitions<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_definitions",
  "Goto the definition of the word under the cursor, if there's only one, otherwise show all options in Telescope"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",gi",
  "<cmd>Telescope lsp_implementations<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_implementations",
  "Goto the implementation of the word under the cursor if there's only one, otherwise show all options in Telescope"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",r",
  "<cmd>Telescope lsp_references<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_references",
  "Lists LSP references for word under the cursor"
)

-- Telescope-Git
Mapper.map_buf(
  bufnr,
  "n",
  ",gc",
  "<cmd>Telescope git_commits<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_git_commits",
  "Lists git commits with diff preview, checkout action <cr>, reset mixed <C-r>m, reset soft <C-r>s and reset hard <C-r>h"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",gbc",
  "<cmd>Telescope git_bcommits<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_git_buffer_commits",
  "Lists buffer's git commits with diff preview and checks them out on <cr>"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",gs",
  "<cmd>Telescope git_status<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_git_status",
  "Lists current changes per file with diff preview and add action. (Multi-selection still WIP)"
)

Mapper.map_buf(
  bufnr,
  "n",
  ",gbb",
  "<cmd>Telescope git_branches<cr>",
  {noremap = true, silent = true},
  "Telescope",
  "telescope_git_branches",
  "Lists all branches with log preview, checkout action <cr>, track action <C-t> and rebase action<C-r>"
)

-- Tagbar
Mapper.map_buf(
  bufnr,
  "n",
  "<c-t>",
  ":TagbarToggle<cr>",
  {noremap = true, silent = true},
  "Tagbar",
  "tagbar_toggle",
  "Toggle Tagbar"
)

-- Kommentary
Mapper.map_buf(
  bufnr,
  "n",
  "gcc",
  "",
  {noremap = true, silent = true},
  "Kommentary",
  "kommentary_toggle_line",
  "Toggle comment for the current line"
)

Mapper.map_buf(
  bufnr,
  "n",
  "gc",
  "",
  {noremap = true, silent = true},
  "Kommentary",
  "kommentary_toggle_selection",
  "Toggle comment for the visual selection"
)

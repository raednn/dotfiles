require "config.telescope"
require "config.tagbar"
require "config.nvim-lspconfig"
require "config.nvim-cmp"
require "config.nvim-treesitter"
require "config.nvim-tree"
require "config.nvim-autopairs"
require "config.orgmode"
require "config.toggleterm"

require("packer").startup(
  function()
    -- Packages
    use "wbthomason/packer.nvim"

    -- Editor

    use "junegunn/fzf"
    use "b3nj5m1n/kommentary"
    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"
    use "preservim/tagbar"
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use {"lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim"}
    use "lukas-reineke/indent-blankline.nvim"
    use "ahmedkhalf/project.nvim"
    use "tpope/vim-surround"

    use {
      "nvim-telescope/telescope.nvim",
      requires = "nvim-lua/plenary.nvim"
    }
    use {'kristijanhusak/orgmode.nvim', branch = 'tree-sitter'}

    use {"TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim"}
    use "akinsho/toggleterm.nvim"

    -- Languages
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/nvim-cmp"
    use "ChristianChiarulli/vim-solidity"
    use "folke/lua-dev.nvim"
    use "cespare/vim-toml"

    use {"tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp"}

    -- Snippets
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"

    -- UI
    use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"}
    use {"romgrk/barbar.nvim", requires = "kyazdani42/nvim-web-devicons"}
    use "p00f/nvim-ts-rainbow"
    use "hoob3rt/lualine.nvim"
    use "folke/tokyonight.nvim"
    -- use "edeneast/nightfox.nvim"
  end
)

require "lua-dev".setup {}
require "gitsigns".setup {}
-- require "nightfox".load()

require "project_nvim".setup {}

require "indent_blankline".setup {}
require "lualine".setup {
  options = {theme = "tokyonight"}
}

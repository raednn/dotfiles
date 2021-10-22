local cmp = require "cmp"

cmp.setup(
  {
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end
    },
    mapping = {
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm({select = true})
    },
    sources = {
      {name = "orgmode"},
      {name = "nvim_lsp"},
      {name = "cmp_tabnine"},
      {name = "vsnip"},
      {name = "buffer"}
    }
  }
)

local tabnine = require("cmp_tabnine.config")
tabnine:setup(
  {
    max_lines = 1000,
    max_num_results = 20,
    sort = true,
    run_on_every_keystroke = true,
    snippet_placeholder = ".."
  }
)

-- my options
require("vim-options")

-- my package manager (Lazy.nvim)
require("config.lazy")

-- my keymaps
require("keymaps-custom")


local config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed = { "lua", "javascript", "html", "css", "java", "c", "cpp", "typescript", "json", "tsx" },
  highlight = { enable = true },
  indent = { enable = true },
  autotage = { enable = true },
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

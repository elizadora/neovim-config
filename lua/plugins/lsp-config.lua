return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "emmet_ls", "tailwindcss", "lua_ls", "ts_ls", "pylsp", "prismals", "grammarly", "cssls", "jsonls", "html", "vimls" }
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      -- Lua
      lspconfig.lua_ls.setup({})

      -- TypeScript / JavaScript
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      -- Python
      lspconfig.pylsp.setup({
        capabilities = capabilities
      })
      -- Prisma
      lspconfig.prismals.setup({
        capabilities = capabilities
      })

      -- Grammarly
      lspconfig.grammarly.setup({
        capabilities = capabilities,
      })

      -- CSS
      lspconfig.cssls.setup({
        capabilities = capabilities
      })

      -- JSON
      lspconfig.jsonls.setup({
        capabilities = capabilities,

      })

      -- HTML
      lspconfig.html.setup({
        capabilities = capabilities,
      })

      -- Vim
      lspconfig.vimls.setup({
        capabilities = capabilities,
      })

      --emmet_ls
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
      })

      -- Tailwind CSS
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        filetypes = {
          "html",
          "css",
          "scss",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "svelte",
          "vue",
        },
        init_options = {
          userLanguages = {
            eelixir = "html",
            eruby = "html",
            heex = "html",
            templ = "html",
          },
        },
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                { "classNames\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                { "cn\\(([^)]*)\\)",         "[\"'`]([^\"'`]*).*?[\"'`]" },
              },
            },
          },
        },
      })
    end
  }
}

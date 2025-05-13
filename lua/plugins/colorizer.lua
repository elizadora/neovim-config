return {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = {
          "css",
          "scss",
          "html",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "svelte",
          "vue",
        },
        user_default_options = {
          tailwind = true,
          mode = "background",
        },
      })
    end,
}


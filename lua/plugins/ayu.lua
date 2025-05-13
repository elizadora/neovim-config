return {
  "Shatur/neovim-ayu", -- Repository theme
  config = function()
    require('ayu').setup({
      mirage = false,
      terminal = true,
      overrides = {},
    })
    vim.cmd("colorscheme ayu") -- Apply theme
  end
}

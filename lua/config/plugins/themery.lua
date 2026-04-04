return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {"gruvbox", "catppuccin"},
      livePreview = true, -- Apply theme while picking. Default to true.

    })
  end
}

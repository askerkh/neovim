return {
  "navarasu/onedark.nvim",
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --   },
  -- },

  opts = function()
    require("onedark").setup({
      style = "warmer",
    })
    require("onedark").load()
  end,
}

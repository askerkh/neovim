return {
  "nvim-tree/nvim-tree.lua",
  dependecies = { "nvim-tree/nvim-web-devicons" },
  keys = { { "<leader>e", "<cmd>NvimTreeToggle<cr>", "Toggle explorer" } },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set to update cwd with open files
    vim.g.nvim_tree_respect_buf_cwd = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- empty setup using defaults
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
    })
  end,
}

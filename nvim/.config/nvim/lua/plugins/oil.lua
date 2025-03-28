return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<leader>pv", vim.cmd.Lazy)
  end,
}

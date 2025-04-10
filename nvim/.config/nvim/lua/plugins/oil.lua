return {
  'stevearc/oil.nvim',
  opts = {
    vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}

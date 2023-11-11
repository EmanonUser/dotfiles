return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.3',
  dependencies = { 'nvim-lua/plenary.nvim', 'debugloop/telescope-undo.nvim', },
  config = function()
    require('telescope').setup({
      extensions = {
        undo = {
          entry_format = "state #$ID, $STAT, $TIME",
          mapping = {
            i = {
              ["<cr>"] = require("telescope-undo.actions").yank_additions,
              ["Y"] = require("telescope-undo.actions").yank_deletions,
              ["u"] = require("telescope-undo.actions").restore,
            },
          },
        },
      },
    })
    require("telescope").load_extension("undo")
    local builtin = require('telescope.builtin')
    vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fi', builtin.git_files, {})
  end,
}

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<space>gd', function()
  vim.lsp.buf.format { async = false }
end, { desc = 'Format buffer' })

vim.keymap.set('i', 'jj', "<Esc>", { desc = 'Format buffer' })

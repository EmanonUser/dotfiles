vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.api.nvim_create_autocmd("LspAttach", {
  desc = 'Format buffer on save',
  group = vim.api.nvim_create_augroup("lsp", { clear = true }),
  callback = function(args)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        vim.lsp.buf.format { async = false, id = args.data.client_id }
      end,
    })
  end
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('Highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Remove trailling spaces',
  group = vim.api.nvim_create_augroup('Remove-trailling', { clear = true }),
  callback = function()
    local cursor = vim.fn.getpos(".")
    pcall(function() vim.cmd [[%s/\s\+$//e]] end)
    vim.fn.setpos(".", cursor)
  end,
})

vim.keymap.set('n', '<space>gd', function()
  vim.lsp.buf.format { async = false }
end, { desc = 'Format buffer' })

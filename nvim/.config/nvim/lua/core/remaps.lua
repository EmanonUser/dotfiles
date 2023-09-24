vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.wo.relativenumber = true
vim.api.nvim_set_keymap('n', '<Up>', '', {})
vim.api.nvim_set_keymap('n', '<Down>', '', {})
vim.api.nvim_set_keymap('n', '<Left>', '', {})
vim.api.nvim_set_keymap('n', '<Right>', '', {})

vim.api.nvim_set_keymap('i', '<Up>', '', {})
vim.api.nvim_set_keymap('i', '<Down>', '', {})
vim.api.nvim_set_keymap('i', '<Left>', '', {})
vim.api.nvim_set_keymap('i', '<Right>', '', {})

vim.api.nvim_set_keymap('v', '<Up>', '', {})
vim.api.nvim_set_keymap('v', '<Down>', '', {})
vim.api.nvim_set_keymap('v', '<Left>', '', {})
vim.api.nvim_set_keymap('v', '<Right>', '', {})

vim.opt.foldmethod = "syntax"
vim.opt.number = true
--vim.opt.showcmd = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
--vim.opt.list = true

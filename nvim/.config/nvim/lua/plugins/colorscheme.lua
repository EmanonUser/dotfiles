return {
	{
		"projekt0n/github-nvim-theme",
		priority = 10,
		config = function()
			vim.cmd([[colorscheme github_dark_high_contrast]])
		end,
	},

	{
		'AlexvZyl/nordic.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require 'nordic'.load()
		end,
	},
	"dotsilas/darcubox-nvim",
	"sainnhe/sonokai",
}

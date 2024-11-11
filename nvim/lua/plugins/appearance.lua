return {
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,

		config = function()
			vim.g.sonokai_style = "shusia"
			vim.cmd.colorscheme("sonokai")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("ibl").setup()
		end,
	},
}

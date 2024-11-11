return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = {
			{ 'nvim-tree/nvim-web-devicons' },
			{ "nvim-lua/plenary.nvim" },
		}
	},
	{
		"FeiyouG/commander.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			local tele_builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", ":Telescope commander<Enter>", { noremap = true })
			require("commander").add({
				{
					keys = {
						{"n", "<C-f>"},
						{"i", "<C-f>"},
					},
					cmd = tele_builtin.live_grep,
					desc = "Find in ...",
					cat = "find",
				},
				{
					keys = {
						{"n", "<C-o>"},
						{"i", "<C-o>"},
					},
					cmd = tele_builtin.find_files,
					desc = "Open a file",
					cat = "find",
				},
			})
		end
	}
}

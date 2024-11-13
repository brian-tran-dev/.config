return {
	{
		'mrjones2014/legendary.nvim',
		priority = 900,
		lazy = false,
		dependencies = { 'kkharji/sqlite.lua' },
		opts = {
			extensions = {
				lazy_nvim = true, },
		},
		keys = {
			{
				"<leader>pl",
				function () vim.cmd[[ Lazy ]] end,
				mode = "n",
				noremap = true,
				desc = "Lazy Panel",
			},
			{
				"<C-p>",
				function () vim.cmd[[ Legendary ]] end,
				mode = {"n", "v"},
				noremap = true,
			}
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-lua/plenary.nvim" },
		},
		keys = {
			{
				"<leader>fg",
				function() require("telescope.builtin").live_grep() end,
				desc = "Find in",
				mode = "n",
				noremap = true,
			},
			{
				"<leader>ff",
				function() require("telescope.builtin").find_files() end,
				mode = "n",
				desc = "Open file",
				noremap = true,
			}
		},
		config = function ()
			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = {
					mappings = {
						n = {
							["<C-c>"] = actions.close
						}
					},
					layout_strategy = "vertical",
					layout_config = {
						vertical = {
							height = 0.95,
							preview_cutoff = 0,
							prompt_position = "bottom",
							width = 0.8
						},
					},
				},
			})
		end
	},
}

vim.diagnostic.config({
	virtual_text = true,
})

local d_win = nil

require("legendary").keymaps({
	{
		"<leader>dn",
		function()
			if d_win ~= nil and vim.api.nvim_win_is_valid(d_win) then
				vim.api.nvim_win_close(d_win, false)
				d_win = nil
			end

			local x = vim.diagnostic.get_next()
			if x == nil then return end
			vim.api.nvim_win_set_cursor(0, {x.lnum + 1, x.col})

			_, d_win = vim.diagnostic.open_float({
				scope = "cursor"
			})
		end,
		mode = "n",
		desc = "Next diagnostic error",
	},
	{
		"<leader>dp",
		function()
			if d_win ~= nil and vim.api.nvim_win_is_valid(d_win) then
				vim.api.nvim_win_close(d_win, false)
				d_win = nil
			end

			local x = vim.diagnostic.get_prev()
			if x == nil then return end
			vim.api.nvim_win_set_cursor(0, {x.lnum + 1, x.col})
			_, d_win = vim.diagnostic.open_float({
				scope = "cursor"
			})
		end,
		mode = "n",
		desc = "Previous diagnostic error",
	},
	{
		"<leader>ds",
		function()
			if d_win ~= nil and vim.api.nvim_win_is_valid(d_win) then
				vim.api.nvim_win_close(d_win, false)
				d_win = nil
				return
			end
			_, d_win = vim.diagnostic.open_float({
				scope = "cursor"
			})
		end,
		mode = "n",
		desc = "Show diagnostic"
	},
})

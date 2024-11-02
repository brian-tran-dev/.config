return {
	"neovim/nvim-lspconfig",

	dependencies = {{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup()
		end
	}},

	config = function()
		require('lspconfig').lua_ls.setup({
			settings = { Lua = {
				diagnostics = {
					globals = {"vim"},
				},
			}},
		})
	end,
}

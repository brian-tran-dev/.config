return {
	"williamboman/mason.nvim",
	dependencies = { "FeiyouG/commander.nvim" },
	config = function ()
		require("mason").setup({})

		require("commander").add({
			keys = {"n", "<leader> ma"},
			cmd = ":Mason",
			desc = "Mason Panel",
			cat = "lsp"
		})
	end
}

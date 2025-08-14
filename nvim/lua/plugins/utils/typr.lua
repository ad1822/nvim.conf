return {
	"nvzone/typr",
	dependencies = "nvzone/volt",
	opts = {},
	keys = {
		{
			"<leader>tt",
			function()
				vim.cmd("Typr")
			end,
			desc = "Start Typing Test",
		},
		{
			"<leader>tD",
			function()
				vim.cmd("TyprStats")
			end,
			desc = "Typing Dashboard",
		},
	},
	cmd = { "Typr", "TyprStats" },
}

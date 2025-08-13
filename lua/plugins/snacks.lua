return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		terminal = {
			win = {
				wo = {
					winbar = "",
				},
			},
		},
		styles = {},
		picker = {
			hidden = true,
			sources = {
				files = {
					hidden = true,
				},
				explorer = {
					layout = {
						auto_hide = { "input" },
					},
				},
			},
		},
	},
}

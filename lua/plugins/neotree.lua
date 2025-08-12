return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		picker = {
			hidden = true,
			sources = {
				files = {
					hidden = true,
				},
				explorer = {
					layout = {
						--						auto_hide = { "input" },
					},
				},
			},
		},
	},
}

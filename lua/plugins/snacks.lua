return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		notifier = {
			padding = true,
			timeout = 5000,
			styles = "compact",
			top_down = true,
			margin = { top = 1, right = 1, bottom = 0 },
		},
		terminal = {
			win = {
				wo = {
					winbar = "",
				},
			},
		},
		styles = {},
		picker = {
			layout = {
				preset = "telescope",
			},
			hidden = true,
			sources = {
				files = {
					hidden = true,
				},
				explorer = {
					layout = {
						-- auto_hide = { "input" },
					},
				},
				cliphist = {
					finder = "system_cliphist",
					format = "text",
					preview = "preview",
					confirm = { "copy", "close" },
				},
			},
		},
	},
	config = function(_, opts)
		require("snacks").setup(opts)
		Snacks.toggle.dim():set(true)
	end,
}

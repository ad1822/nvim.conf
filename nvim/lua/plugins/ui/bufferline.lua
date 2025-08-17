return {
	"akinsho/bufferline.nvim",
	enabled = true,
	opts = {
		options = {
			mode = "buffers",
			separator_style = "slant",
			diagnostics = "nvim_lsp",
			diagnostics_update_on_event = true,
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
		},
		highlights = {
			buffer_selected = {
				fg = "#b4befe", -- lavender
				bold = false,
				italic = true,
			},
			tab_selected = {
				fg = "#b4befe", -- lavender
				bold = true,
			},
		},
	},
}

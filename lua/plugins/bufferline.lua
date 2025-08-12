return {
	"akinsho/bufferline.nvim",
	enabled = true,
	opts = {
		options = {
			mode = "buffers",
			separator_style = "slant",
			diagnostics = "nvim_lsp",
			diagnostics_update_on_event = true, -- use nvim's diagnostic handler
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},

			--	numbers = function(opts)
			--		return string.format("%s·%s", opts.raise(opts.id), opts.lower(opts.id))
			--	end,
		},
		highlights = {
			buffer_selected = {
				underline = true, -- underlines the active buffer
				sp = "#cba6f7", -- underline color (same as `special` in vim highlights)
				bold = true,
				italic = false,
			},
			tab_selected = {
				underline = true,
				sp = "#cba6f7",
				bold = true,
			},
		},
	},
}

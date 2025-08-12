return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			icons_enabled = true,
			theme = "catppuccin", -- You can use "gruvbox", "onedark", etc.
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			globalstatus = true, -- One statusline for the whole screen
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {
				{ "filename", path = 1 }, -- path=0 just filename, path=1 relative, path=2 absolute
				{ "filesize" },
			},
			lualine_x = {
				{ "encoding" },
				{ "fileformat" },
				{ "filetype" },
				{ "searchcount" },
				{ "selectioncount" },
				{ "os.date('%H:%M')", icon = "" }, -- clock
			},
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
	},
}

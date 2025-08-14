return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			icons_enabled = true,
			theme = "catppuccin",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			globalstatus = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {
				{ "filename", path = 0 }, -- path=0 just filename, path=1 relative, path=2 absolute
				{ "filesize" },
			},
			lualine_x = {
				{ "encoding" },
				{ "fileformat" },
				{ "filetype" },
				{ "searchcount" },
				{ "selectioncount" },
				{ "os.date('%H:%M')", icon = "" },
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

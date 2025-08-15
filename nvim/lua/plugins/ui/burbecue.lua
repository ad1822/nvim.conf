return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("barbecue").setup({
			theme = {
				normal = { fg = "#c6d0f5" }, -- text
				ellipsis = { fg = "#737aa2" }, -- faded
				separator = { fg = "#737aa2" }, -- faded
				modified = { fg = "#f5bde6" }, -- pink for modified files

				dirname = { fg = "#737aa2" }, -- faded
				basename = { fg = "#c6d0f5", bold = true },

				context_file = { fg = "#f5bde6" },
				context_module = { fg = "#f5bde6" },
				context_namespace = { fg = "#f5bde6" },
				context_package = { fg = "#f5bde6" },
				context_class = { fg = "#f5bde6" },
				context_method = { fg = "#f5bde6" },
				context_property = { fg = "#f5bde6" },
				context_field = { fg = "#f5bde6" },
				context_constructor = { fg = "#f5bde6" },
				context_enum = { fg = "#f5bde6" },
				context_interface = { fg = "#f5bde6" },
				context_function = { fg = "#f5bde6" },
				context_variable = { fg = "#f5bde6" },
				context_constant = { fg = "#f5bde6" },
				context_string = { fg = "#bae67e" }, -- green
				context_number = { fg = "#ffb454" }, -- orange
				context_boolean = { fg = "#ff757f" }, -- red
				context_array = { fg = "#36d0e0" }, -- teal
				context_object = { fg = "#8aadf4" }, -- blue
				context_key = { fg = "#eed49f" }, -- yellow
				context_null = { fg = "#ff757f" }, -- red
				context_enum_member = { fg = "#f5bde6" }, -- pink
				context_struct = { fg = "#f5bde6" }, -- pink
				context_event = { fg = "#f5bde6" }, -- pink
				context_operator = { fg = "#8aadf4" }, -- blue
				context_type_parameter = { fg = "#eed49f" }, -- yellow
			},
		})
	end,
	opts = {},
}

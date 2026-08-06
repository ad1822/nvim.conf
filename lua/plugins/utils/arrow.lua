return {
	"otavioschwanck/arrow.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		-- or if using `mini.icons`
		-- { "echasnovski/mini.icons" },
	},
	opts = {
		show_icons = true,
		leader_key = "rr",
		buffer_leader_key = "m", -- Per Buffer Mappings
		index_keys = "jklzxcv",
	},
}

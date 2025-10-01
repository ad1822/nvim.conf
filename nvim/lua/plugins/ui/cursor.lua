return {
	"sphamba/smear-cursor.nvim",
	enabled = true,
	opts = {
		smear_between_buffers = false,

		smear_between_neighbor_lines = true,

		scroll_buffer_space = true,

		legacy_computing_symbols_support = false,

		-- Smear Effect
		smear_insert_mode = false,
		cursor_color = "#f2cdcd",
		stiffness = 1,
		trailing_stiffness = 0.49,
		matrix_pixel_threshold = 0,
	},
}

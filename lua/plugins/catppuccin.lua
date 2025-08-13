return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			custom_highlights = function()
				return {
					-- Custom Backgroup (mantle) color
					Normal = { bg = "#181825" },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}

return {
	"Saghen/blink.cmp",
	config = function()
		require("blink.cmp").setup({
			keymap = {
				preset = "default",
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
				["<CR>"] = { "accept", "fallback" },
				["<C-l>"] = {
					function(cmp)
						cmp.show({ providers = { "snippets" } })
					end,
				},
				["<C-e>"] = { "cancel", "fallback" },
			},
			completion = {
				documentation = {
					auto_show = true,
					treesitter_highlighting = true,
					window = {
						border = "rounded", -- rounded border for docs popup
					},
				},
				menu = {
					border = "rounded", -- rounded border for completion menu
					scrollbar = true,
					auto_show = true,
				},
			},
		})
	end,
}

return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<C-\>]],
			direction = "float",
			close_on_exit = true,
			persist_size = true,
			shade_terminals = true,
			shading_factor = 2,
			float_opts = {
				border = "rounded",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})

		-- Better keymaps inside terminal mode
		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
			vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
			vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
			vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
		end

		vim.cmd("autocmd! TermOpen term://* lua _G.set_terminal_keymaps()")
	end,
}

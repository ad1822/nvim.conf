return {
	"akinsho/toggleterm.nvim",
	enabled = false,
	config = function()
		require("toggleterm").setup({
			size = 10,
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
					FloatBorder = {
						guifg = "#F38BA8", -- Catppuccin Mocha red
						guibg = "NONE", -- transparent or inherit background
					},
					Normal = {
						guibg = "NONE", -- match editor background (or set custom color)
					},
				},
			},
		})

		-- Better keymaps inside terminal mode
		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end

		-- if you only want these mappings for toggle term use term://*toggleterm#* instead
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		-- vim.cmd("autocmd! TermOpen term://* lua _G.set_terminal_keymaps()")
	end,
}

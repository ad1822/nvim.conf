-- return {
-- 	"mbbill/undotree",
-- 	init = function()
-- 		vim.g.undotree_WindowLayout = 2
-- 		vim.g.undotree_SetFocusWhenToggle = 1
-- 		vim.g.undotree_DiffAutoOpen = 1 -- ensure the diff panel opens automatically
-- 	end,
-- 	keys = {
-- 		{
-- 			"<leader>uU",
-- 			function()
-- 				vim.cmd("UndotreeToggle")
-- 			end,
-- 			desc = "Toggle UndoTree",
-- 		},
-- 	},
--
-- 	cmd = { "UndotreeToggle" },
-- }

return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	keys = {
		{
			"<leader>uu",
			function()
				require("undotree").toggle()
			end,
			desc = "Toggle Undotree",
		},
	},
	config = function()
		require("undotree").setup({
			float_diff = true, -- use floating window for diffs (disables layout option)
			layout = "left_bottom", -- works only if float_diff = false
			position = "left", -- "right" or "bottom"
			ignore_filetype = {
				"undotree",
				"undotreeDiff",
				"qf",
				"TelescopePrompt",
				"spectre_panel",
				"tsplayground",
			},
			window = {
				winblend = 0,
			},
			keymaps = {
				["j"] = "move_next",
				["k"] = "move_prev",
				["gj"] = "move2parent",
				["J"] = "move_change_next",
				["K"] = "move_change_prev",
				["<cr>"] = "action_enter",
				["p"] = "enter_diffbuf",
				["q"] = "quit",
			},
		})
	end,
}

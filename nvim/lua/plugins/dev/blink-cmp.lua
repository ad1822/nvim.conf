return {
	"Saghen/blink.cmp",
	enabled = true,
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},

	cmdline = { enabled = false },
	-- Todo : Not done
	term = {},
	config = function()
		require("blink.cmp").setup({
			keymap = {
				preset = "default",
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
				["<CR>"] = { "accept", "fallback" },
				["<C-Space>"] = {
					function(cmp)
						cmp.show({ providers = { "snippets" } })
					end,
				},
				["<C-e>"] = { "cancel", "fallback" },
			},
			-- Experimental signature help support
			signature = {
				enabled = true,
				trigger = {
					-- Show the signature help automatically
					enabled = true,
					-- Show the signature help window after typing any of alphanumerics, `-` or `_`
					show_on_keyword = false,
					blocked_trigger_characters = {},
					blocked_retrigger_characters = {},
					-- Show the signature help window after typing a trigger character
					show_on_trigger_character = true,
					-- Show the signature help window when entering insert mode
					show_on_insert = false,
					-- Show the signature help window when the cursor comes after a trigger character when entering insert mode
					show_on_insert_on_trigger_character = true,
				},
				window = {
					min_width = 1,
					max_width = 100,
					max_height = 10,
					border = nil, -- Defaults to `vim.o.winborder` on nvim 0.11+ or 'padded' when not defined/<=0.10
					winblend = 0,
					winhighlight = "Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder",
					scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
					-- Which directions to show the window,
					-- falling back to the next direction when there's not enough space,
					-- or another window is in the way
					direction_priority = { "n", "s" },
					-- Can accept a function if you need more control
					-- direction_priority = function()
					--   if condition then return { 'n', 's' } end
					--   return { 's', 'n' }
					-- end,

					-- Disable if you run into performance issues
					treesitter_highlighting = true,
					show_documentation = false,
				},
			},
			completion = {
				ghost_text = {
					enabled = false,
					show_with_menu = false,
				},
				keyword = { range = "full" },
				documentation = {
					auto_show = true,
					treesitter_highlighting = true,
					auto_show_delay_ms = 200,
					window = {
						border = "rounded",
						winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
					},
				},
				menu = {
					-- draw = {
					-- 	columns = {
					-- 		{ "label", "label_description", gap = 1, "kind_icon", "kind" },
					-- 		-- {},
					-- 	},
					-- },
					draw = {
						align_to = "cursor", -- or 'none' to disable, or 'cursor' to align to the cursor
						-- Left and right padding, optionally { left, right } for different padding on each side
						padding = 1,
						-- Gap between columns
						gap = 1,
						-- Priority of the cursorline highlight, setting this to 0 will render it below other highlights
						cursorline_priority = 0,
						-- Use treesitter to highlight the label text for the given list of sources
						treesitter = { "lsp" },

						-- Components to render, grouped by column
						-- columns = { { "kind_icon", "label", gap = 1, "label_description", "kind" } },
						columns = { { "kind_icon" }, { "label", gap = 1 } },
						components = {
							label = {
								text = function(ctx)
									return require("colorful-menu").blink_components_text(ctx)
								end,
								highlight = function(ctx)
									return require("colorful-menu").blink_components_highlight(ctx)
								end,
							},
						},
						-- Definitions for possible components to render. Each defines:
						--   ellipsis: whether to add an ellipsis when truncating the text
						--   width: control the min, max and fill behavior of the component
						--   text function: will be called for each item
						--   highlight function: will be called only when the line appears on screen
					},
					enabled = true,
					min_width = 30,
					max_height = 10,
					border = "rounded",
					winblend = 0,
					winhighlight = "Normal:BlinkCmpMenu,Border:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
					-- Keep the cursor X lines away from the top/bottom of the window
					scrolloff = 2,
					-- Note that the gutter will be disabled when border ~= 'none'
					scrollbar = true,
					-- Which directions to show the window,
					-- falling back to the next direction when there's not enough space
					direction_priority = { "s", "n" },
					-- Can accept a function if you need more control
					-- direction_priority = function()
					--   if condition then return { 'n', 's' } end
					--   return { 's', 'n' }
					-- end,

					-- Whether to automatically show the window when new completion items are available
					auto_show = true,

					-- Screen coordinates of the command line
					cmdline_position = function()
						if vim.g.ui_cmdline_pos ~= nil then
							local pos = vim.g.ui_cmdline_pos -- (1, 0)-indexed
							return { pos[1] - 1, pos[2] }
						end
						local height = (vim.o.cmdheight == 0) and 1 or vim.o.cmdheight
						return { vim.o.lines - height, 0 }
					end,
				},
			},
		})
	end,
}

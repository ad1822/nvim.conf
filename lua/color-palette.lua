local Snacks = require("snacks")
local M = {}

M.colors = {
	{ name = "Rosewater", hex = "#f5e0dc" },
	{ name = "Flamingo", hex = "#f2cdcd" },
	{ name = "Pink", hex = "#f5c2e7" },
	{ name = "Mauve", hex = "#cba6f7" },
	{ name = "Red", hex = "#f38ba8" },
	{ name = "Maroon", hex = "#eba0ac" },
	{ name = "Peach", hex = "#fab387" },
	{ name = "Yellow", hex = "#f9e2af" },
	{ name = "Green", hex = "#a6e3a1" },
	{ name = "Teal", hex = "#94e2d5" },
	{ name = "Sky", hex = "#89dceb" },
	{ name = "Sapphire", hex = "#74c7ec" },
	{ name = "Blue", hex = "#89b4fa" },
	{ name = "Lavender", hex = "#b4befe" },
	{ name = "Text", hex = "#cdd6f4" },
	{ name = "Overlay_2", hex = "#9399b2" },
	{ name = "Overlay_1", hex = "#7f849c" },
	{ name = "Overlay_0", hex = "#6c7086" },
	{ name = "Surface_2", hex = "#585b70" },
	{ name = "Surface_1", hex = "#45475a" },
	{ name = "Surface_0", hex = "#313244" },
	{ name = "Base", hex = "#1e1e2e" },
	{ name = "Mantle", hex = "#181825" },
	{ name = "Crust", hex = "#11111b" },
}

-- Define highlights for colors and hex background
for _, c in ipairs(M.colors) do
	vim.api.nvim_set_hl(0, "Color_" .. c.name, { fg = c.hex })
	local hex_hl = "Hex_" .. c.hex:gsub("#", "x")
	vim.api.nvim_set_hl(0, hex_hl, { bg = c.hex })
	local hex_hl_name = "Hex_" .. c.hex:gsub("#", "x")
	vim.api.nvim_set_hl(0, hex_hl_name, { bg = c.hex, fg = "#181825" })
end

function M.show_colors()
	local items = {}

	for idx, color in ipairs(M.colors) do
		local item = {
			name = color.name,
			hex = color.hex,
			action = function()
				vim.fn.setreg("+", color.hex)
				vim.notify("Copied " .. color.name .. " to clipboard", vim.log.levels.INFO)
			end,
		}

		table.insert(items, {
			text = color.name .. " " .. color.hex, -- enables search
			formatted = color.name .. " " .. color.hex,
			item = item, -- store original object
			idx = idx,
		})
	end

	-- Use ui_select formatter if available
	local format = (Snacks.picker and Snacks.picker.format and Snacks.picker.format.ui_select)
			and Snacks.picker.format.ui_select(nil, #items)
		or "text"

	Snacks.picker.pick({
		title = "Color Palette",
		layout = { preset = "vscode" },
		items = items,
		format = function(entry)
			local hex_hl = "Hex_" .. entry.item.hex:gsub("#", "x")
			return {
				{ string.format("   %-60s", entry.item.name), "Color_" .. entry.item.name }, -- colored name
				{ " " .. entry.item.hex, hex_hl }, -- hex with background + white font
			}
		end,
		actions = {
			confirm = function(picker, selected_item)
				if not selected_item then
					return
				end
				picker:close()
				vim.schedule(function()
					selected_item.item.action()
				end)
			end,
		},
		on_close = function() end,
	})
end

return M

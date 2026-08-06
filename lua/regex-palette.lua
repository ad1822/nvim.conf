-- save as lua/regex_snacks.lua and require as needed
local Snacks = require("snacks") -- assumes snacks.nvim is installed
local M = {}

M.regex_patterns = {
	{ text = "Grab word inside double quotes", value = [[:'<,'>s/"\([^"]*\)"/]] },
	{ text = "Grab word inside single quotes", value = [[:'<,'>s/'\([^']*\)'/]] },
	{ text = "Replace double quotes with single quotes", value = [[:'<,'>s/"\([^"]*\)"/'\1']] },
	{ text = "Replace single quotes with double quotes", value = [[:'<,'>s/'\([^']*\)'/"\1"]] },
	{ text = "Surround word with double quotes", value = [[:'<,'>s/\(\w\+\)/"\1"]] },
	{ text = "Surround word with single quotes", value = [[:'<,'>s/\(\w\+\)/'\1']] },
	{ text = "Remove everything inside quotes", value = [[:'<,'>s/"[^"]*"/"""]] },
	{ text = "Capture first word in line", value = [[:'<,'>s/\(\w\+\)/]] },
	{ text = "Capture last word in line", value = [[:'<,'>s/\(\S\+\)$/]] },
}

function M.display_patterns()
	-- build items in the shape `select` expects
	local items = {}
	for i, entry in ipairs(M.regex_patterns) do
		table.insert(items, {
			formatted = entry.text, -- nice preview string
			text = entry.text, -- list label
			item = entry, -- original entry (we pick value from this)
			idx = i,
		})
	end

	-- choose ui_select formatter if available, otherwise fallback to "text"
	local format = (Snacks.picker and Snacks.picker.format and Snacks.picker.format.ui_select)
			and Snacks.picker.format.ui_select(nil, #items)
		or "text"

	Snacks.picker.pick({
		source = "select",
		items = items,
		format = format,
		title = "Regex Snacks",
		layout = { preset = "select" }, -- compact select layout
		actions = {
			confirm = function(picker, selected_item)
				if not selected_item then
					return
				end
				picker:close()
				vim.schedule(function()
					local regex = selected_item.item.value
					-- detect if we are in visual mode
					local prefix = ""
					if vim.fn.mode():match("[vV\22]") then
						vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
					end
					local keys = vim.api.nvim_replace_termcodes(":" .. prefix .. regex, true, false, true)
					vim.api.nvim_feedkeys(keys, "n", false)
				end)
			end,
		},
		on_close = function() end,
	})
end

return M

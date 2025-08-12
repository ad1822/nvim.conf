vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc", "markdown", "text" },
	callback = function()
		vim.wo.conceallevel = 0
	end,
})

vim.opt.number = false
vim.opt.relativenumber = false

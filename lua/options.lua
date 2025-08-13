vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc", "markdown", "text" },
	callback = function()
		vim.wo.conceallevel = 3
	end,
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.swapfile = true

vim.wo.number = true
vim.wo.relativenumber = true

-- UI & Display
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Indentation
vim.opt.smartindent = true

-- Performance
vim.opt.updatetime = 250
vim.opt.timeoutlen = 400

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

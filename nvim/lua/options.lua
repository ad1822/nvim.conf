vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc", "markdown", "text" },
	callback = function()
		vim.wo.conceallevel = 2
	end,
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.wo.number = true
vim.wo.relativenumber = true

local opt = vim.opt
-- UI & Display
opt.cursorline = true
opt.scroll = 5
opt.signcolumn = "yes"
opt.wrap = true
opt.scrolloff = 8
opt.autoindent = true
opt.sidescrolloff = 8
opt.winborder = "none"

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Indentation
opt.smartindent = true

-- Performance
opt.updatetime = 250
opt.swapfile = false
opt.timeoutlen = 400

-- Clipboard
opt.clipboard = "unnamedplus"

-- Splits
opt.splitright = true
opt.splitbelow = true

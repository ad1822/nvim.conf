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

vim.opt.swapfile = false

vim.wo.number = true
vim.wo.relativenumber = true

-- UI & Display
vim.opt.cursorline = true -- Highlight current line
vim.opt.signcolumn = "yes" -- Always show the sign column to avoid text shifting
vim.opt.wrap = false -- No line wrapping by default
vim.opt.scrolloff = 8 -- Keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns visible left/right of cursor

-- Searching
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override ignorecase if search contains uppercase
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.hlsearch = true -- Highlight all search matches

-- Indentation
vim.opt.smartindent = true -- Smart autoindent on new lines
-- You already set tabstop, shiftwidth, expandtab above

-- Performance
vim.opt.updatetime = 250 -- Faster completion and diagnostics updates
vim.opt.timeoutlen = 400 -- Faster key sequence timeout

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- Splits
vim.opt.splitright = true -- Vertical splits to the right
vim.opt.splitbelow = true -- Horizontal splits below

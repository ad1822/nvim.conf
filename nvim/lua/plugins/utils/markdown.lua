return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = function()
		vim.fn["mkdp#util#install"]() -- installs dependencies
	end,
	ft = { "markdown" },
	-- filetypes to attach plugin to
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.g.mkdp_browser = "zen-browser" -- direct browser setting
	end,
}

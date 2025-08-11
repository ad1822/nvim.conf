return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				markdown = { "prettier" },
				go = { "gofumpt", "goimports" },
				lua = { "stylua" },
			}, --	format_on_save = {
			--		lsp_fallback = true, -- Fallback to LSP formatting if conform fails
			--		async = false, -- Synchronous formatting, useful for smaller files
			--		timeout_ms = 1000, -- Timeout for formatting (1 second)
			--	},
		},
	},
}

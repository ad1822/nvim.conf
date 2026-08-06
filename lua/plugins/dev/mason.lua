return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				-- Javascript/TypeScript
				"vtsls",
				"prettierd",
				-- Python
				"pyright",
				"black",
				"ruff",
				-- Golang
				"gopls",
				"goimports",
				"golines",
			},
		},
	},
}

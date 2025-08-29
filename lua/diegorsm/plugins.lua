return {
	-- TREESITTER
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	-- TELESCOPE
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		module = "telescope",
	},
	-- CONFORM
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				lua = { "stylua" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
			},
		},
	},
	-- NVIM-TREE
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },
	-- MASON
	{ "mason-org/mason.nvim", opts = {} },
	-- BUFFERLINE
	{ "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },
	-- CATPPUCCIN
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { auto_integrations = true } },
	-- COMMENT
	{ "numToStr/Comment.nvim", opts = {} },
	-- AUTOCLOSE
	{ "m4xshen/autoclose.nvim", opts = {} },
	-- INDENT-BLANKLINE
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	-- WHICH-KEY
	{ "folke/which-key.nvim", lazy = true, opts = {} },
}

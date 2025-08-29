return {
	-- TREESITTER
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"javascript",
					"lua",
					"vim",
					"vimdoc",
					"c",
					"query",
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
					disable = { "python", "c" }, -- these and some other langs don't work well
				},
			})
		end,
	},
	-- TELESCOPE
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		module = "telescope",
		config = function()
			require("telescope").setup({})

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>fr", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", ":Telescope find_files hidden=true <CR>")

			vim.keymap.set("n", "<leader>pws", function()
				local word = vim.fn.expand("<cword>")
				builtin.grep_string({ search = word })
			end)

			vim.keymap.set("n", "<leader>pWs", function()
				local word = vim.fn.expand("<cWORD>")
				builtin.grep_string({ search = word })
			end)
		end,
	},
	-- MASON
	{
		"mason-org/mason.nvim",
		opts = { ensure_installed = { "prettier" } },
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
	-- COMMENT
	{
		"numToStr/Comment.nvim",
		opts = {},
	},
	-- INDENT-BLANKLINE
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	-- BUFFERLINE
	{
		"akinsho/bufferline.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	-- WHICH-KEY
	{
		"folke/which-key.nvim",
		lazy = true,
	},
	-- NVIM-TREE
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	-- CATPPUCCIN
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}

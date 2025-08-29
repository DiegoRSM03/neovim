-- NVIM TREESITTER
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

-- TELESCOPE
require("telescope").setup({})
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fr", builtin.live_grep, {})
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", ":Telescope find_files hidden=true <CR>")

-- BUFFERLINE
require("bufferline").setup({
	options = {
		mode = "buffers",
		buffer_close_icon = "󰅖",
		modified_icon = "● ",
		close_icon = " ",
		left_trunc_marker = " ",
		right_trunc_marker = " ",
		max_name_length = 18,
		max_prefix_length = 15,
		truncate_names = true,
		tab_size = 18,
		separator_style = "slant",
		always_show_bufferline = true,
		auto_toggle_bufferline = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true,
			},
		},
	},
})

-- INDENT-BLANKLINE
require("ibl").setup()

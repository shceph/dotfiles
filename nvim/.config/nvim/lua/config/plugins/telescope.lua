return {
	{ 'nvim-lua/plenary.nvim' },
	{ 'BurntSushi/ripgrep' },
	{
		'nvim-telescope/telescope.nvim',
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
			vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {})

			require('telescope').setup({
				pickers = {
					buffers = {
						show_all_buffers = true,
						sort_mru = true,
						mappings = {
							i = {
								["<c-d>"] = "delete_buffer",
							},
						},
					},
				},
			})
		end,
	},
}

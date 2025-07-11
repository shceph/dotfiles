return {
	{
		'nvim-tree/nvim-tree.lua',
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup()

			vim.keymap.set('n', '<C-t>', ':NvimTreeFindFileToggle<CR>')
			vim.keymap.set('n', '<leader>n', ':NvimTreeFocus<CR>')
		end
	},
	{ 'nvim-tree/nvim-web-devicons' },
}

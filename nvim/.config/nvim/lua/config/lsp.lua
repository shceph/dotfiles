vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = "LSP Definition" })
		vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Line Diagnostics" })
		-- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = bufnr, desc = "LSP Rename" })

		if client.supports_method('textDocument/formatting') then
			vim.keymap.set('n', '<leader>fj', function()
				vim.lsp.buf.format({ async = true })
			end, { buffer = bufnr, desc = "LSP Format" })
		end
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})

vim.lsp.enable({ "lua_ls", "clangd", "rust_analyzer", "zls" })

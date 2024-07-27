local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- colorschemes
  use 'morhetz/gruvbox'
  use 'rose-pine/neovim'
  use 'folke/tokyonight.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'stevearc/dressing.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'tree-sitter-grammars/tree-sitter-markdown'
  use {
	 'nvim-telescope/telescope.nvim',
	 tag = '0.1.4',
	 requires = { {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep'} }
  }
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'mg979/vim-visual-multi'
  use 'jiangmiao/auto-pairs'

  -- LSP plugins
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  -- use ({
  --   'nvimdev/lspsaga.nvim',
  --   after = 'nvim-lspconfig',
  --   config = function()
  --     require('lspsaga').setup({
  --       lightbulb = {
  --         enable = true,
	     -- sign = false, -- Disable the sign in the status column
  --       },

	   -- -- vim.keymap.set('n', 'gD', vim.cmd('Lspsaga declaration')),
	   -- -- vim.keymap.set('n', 'gd', vim.cmd('Lspsaga definition')),
	   -- -- vim.keymap.set('n', 'K', vim.cmd('Lspsaga hover')),
	   -- -- -- vim.keymap.set('n', 'gi', vim.cmd('Lspsaga implementation')),
	   -- -- vim.keymap.set('n', '<C-k>', vim.cmd('Lspsaga signature_help')),
	   -- -- vim.keymap.set('n', '<space>wa', vim.cmd('Lspsaga add_workspace_folder')),
	   -- -- vim.keymap.set('n', '<space>wr', vim.cmd('Lspsaga remove_workspace_folder')),
	   -- -- vim.keymap.set('n', '<space>wl', function()
		-- -- print(vim.inspect(vim.cmd('Lspsaga list_workspace_folders')()))
	   -- -- end),
	   -- -- vim.keymap.set('n', '<space>D', vim.cmd('Lspsaga type_definition')),
	   -- -- vim.keymap.set('n', '<space>rn', vim.cmd('Lspsaga rename')),
	   -- -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.cmd('Lspsaga code_action')),
	   -- -- vim.keymap.set('n', 'gr', vim.cmd('Lspsaga references')),
	   -- -- vim.keymap.set('n', '<space>f', function()
		-- -- vim.cmd('Lspsaga format') { async = true }
	   -- -- end)
  --     })
  --   end
  -- })

  if packer_bootstrap then
    require('packer').sync()
  end
end)

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
  use 'nvim-treesitter/nvim-treesitter'
  use {
	 'nvim-telescope/telescope.nvim',
	 tag = '0.1.4',
	 requires = { {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep'} }
  }
  use 'tpope/vim-commentary'
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

  if packer_bootstrap then
    require('packer').sync()
  end
end)

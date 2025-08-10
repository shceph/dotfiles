return {
	{ 'morhetz/gruvbox' },
	{ 'rose-pine/neovim' },
	{ 'folke/tokyonight.nvim' },
	{
		'rose-pine/neovim',
		config = function()
			require('rose-pine').setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "moon", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = false,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				highlight_groups = {
					-- Comment = { fg = "foam" },
					StatusLine    = { fg = "love", bg = "surface", blend = 15 },
					-- VertSplit = { fg = "muted", bg = "muted" },
					-- Visual         = { fg = "base", bg = "text", inherit = false },

					-- Completion menu window (nvim-cmp)
					Pmenu         = { bg = "surface", fg = "text" },
					PmenuMatch    = { bg = "surface", fg = "text" },
					PmenuKind     = { bg = "surface", fg = "text" },
					PmenuMatchSel = { bg = "surface", fg = "text" },
				},

				-- before_highlight = function(group, highlight, palette)
				--     -- Disable all undercurls
				--     if highlight.undercurl then
				--         highlight.undercurl = false
				--     end
				--     --
				--     -- Change palette colour
				--     if highlight.fg == palette.pine then
				--         highlight.fg = palette.foam
				--     end
				-- end,
			})

			-- vim.cmd("colorscheme rose-pine")
			-- vim.cmd("colorscheme rose-pine-main")
			vim.cmd("colorscheme rose-pine-moon")
			-- vim.cmd("colorscheme rose-pine-dawn")

			-- vim.cmd("colorscheme tokyonight")
			-- vim.cmd("colorscheme tokyonight-night")
			-- vim.cmd("colorscheme tokyonight-storm")
			-- vim.cmd("colorscheme tokyonight-day")
			-- vim.cmd("colorscheme tokyonight-moon")

			-- vim.cmd("colorscheme gruvbox")

			-- local function set_highlights()
			-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
			-- 	vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
			-- 	vim.api.nvim_set_hl(0, "NonText", { bg = "NONE" })
			-- end

			-- set_highlights()
		end
	}
}

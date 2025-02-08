return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup {
				-- line number が見辛いので色を変える
        on_highlights = function(hl, colors)
          hl.LineNr = {
            fg = "#fffb7b",
          }
          hl.CursorLineNr = {
            fg = colors.orange,
          }
					hl.LineNrAbove = {
            fg = '#6ab8ff',
          }
          hl.LineNrBelow = {
            fg = '#ff6188',
          }
        end
			}
      vim.cmd([[colorscheme tokyonight-moon]])
    end,
  },
}

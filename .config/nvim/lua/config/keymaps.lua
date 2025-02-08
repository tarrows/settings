-- toggletermの設定は plugins/toggleterm.lua に

vim.g.mapleader = ','
vim.g.maplocalleader = '.'
vim.o.timeoutlen = 300  -- default 1000msec は長すぎるので

-- plugins/nvim-tree
vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>',   { desc = 'Toggle NvimTree' })
vim.keymap.set('n', '<Leader>g', ':NvimTreeFindFile<CR>', { desc = 'Find file in NvimTree' })

-- plugins/hop
-- vim.keymap.set('n', '<Leader>h', ':HopWord<CR>',   { desc = 'hop to word' })
vim.keymap.set('n', '<Leader>1', ':HopChar1<CR>',   { desc = 'hop to a char' })
vim.keymap.set('n', '<Leader>2', ':HopChar2<CR>',   { desc = 'hop to 2 chars' })

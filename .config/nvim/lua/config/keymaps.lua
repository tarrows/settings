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

-- telescope (lazy読み込み後でないとrequireに失敗するので注意)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

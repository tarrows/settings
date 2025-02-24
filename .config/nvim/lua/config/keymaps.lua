-- toggletermの設定は plugins/toggleterm.lua に

vim.g.mapleader = ','
vim.g.maplocalleader = '.'
vim.o.timeoutlen = 300  -- default 1000msec は長すぎるので

-- plugins/indent-blankline
vim.keymap.set('n', '<Leader>b', ':IBLToggle<CR>', { desc = 'indent-blankline / toggle' })

-- plugins/nvim-tree
vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>',   { desc = 'nvim-tree / toggle'    })
vim.keymap.set('n', '<Leader>g', ':NvimTreeFindFile<CR>', { desc = 'nvim-tree / find file' })

-- plugins/hop
-- vim.keymap.set('n', '<Leader>h', ':HopWord<CR>',   { desc = 'hop to word' })
vim.keymap.set('n', '<Leader>1', ':HopChar1<CR>', { desc = 'hop / 1 char'  })
vim.keymap.set('n', '<Leader>2', ':HopChar2<CR>', { desc = 'hop / 2 chars' })

-- bufferline
vim.keymap.set('n', '<leader>ww', ':BufferLineCloseOthers<CR>', { desc = 'bufferline / close all'   })
vim.keymap.set('n', '<leader>wr', ':BufferLineCloseRight<CR>',  { desc = 'bufferline / close right' })
vim.keymap.set('n', '<leader>wl', ':BufferLineCloseLeft<CR>',   { desc = 'bufferline / close left'  })
vim.keymap.set('n', '<leader>p',  ':BufferLinePick<CR>',        { desc = 'bufferline / pick file'   })
vim.keymap.set('n', '<leader>5',  ':BufferLineCyclePrev<CR>',   { desc = 'bufferline / cycle prev'  })
vim.keymap.set('n', '<leader>6',  ':BufferLineCycleNext<CR>',   { desc = 'bufferline / cycle next'  })
vim.keymap.set('n', '<leader>m5', ':BufferLineMovePrev<CR>',    { desc = 'bufferline / move prev'   })
vim.keymap.set('n', '<leader>m6', ':BufferLineMoveNext<CR>',    { desc = 'bufferline / move next'   })

-- telescope (lazy読み込み後でないとrequireに失敗するので注意)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'telescope / find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = 'telescope / live grep'  })
vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = 'telescope / buffers'    })
vim.keymap.set('n', '<leader>fh', builtin.help_tags,  { desc = 'telescope / help tags'  })


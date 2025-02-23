require("config.lazy")
-- keymapは :map, (モード毎には :nmap, :imap, :vmap, :cmap) で確認できる
require("config.keymaps")

-- # common
vim.opt.number = true
vim.opt.hls = true
vim.opt.mouse = ""
vim.opt.expandtab = true  -- using spaces instead of tabs
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- ファイルタイプ毎にインデントを設定
vim.cmd([[
  augroup filetype_indentation
    autocmd!
    autocmd FileType python,rust setlocal expandtab shiftwidth=4
    autocmd FileType go setlocal noexpandtab
  augroup END
]])

-- wo: window option
-- 不可視文字を表示 (:set list/:set nolist)
vim.wo.list = true
vim.wo.listchars = 'tab:¦ ,trail:･'

-- # plugins/nvim-tree

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

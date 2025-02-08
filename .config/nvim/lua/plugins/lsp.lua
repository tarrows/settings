return {
  {
    'neovim/nvim-lspconfig',
    -- mason
    { 'williamboman/mason.nvim', opts = {} },
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    -- extras
    { 'j-hui/fidget.nvim', opts = {} },
    'hrsh7th/cmp-nvim-lsp',
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      -- enable language servers
      local servers = {
        gopls = {},
        pyright = {},
        rust_analyzer = {},
        ts_ls = {},
      }
      local ensure_installed = vim.tbl_keys(servers or {})
      require('mason-tool-installer').setup({ ensure_installed = ensure_installed })
      require('mason-lspconfig').setup({
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      })

      -- LSP handlers
      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
      )

      -- Reference highlight
      vim.cmd [[
      set updatetime=500
      highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
      highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
      highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
      augroup lsp_document_highlight
        autocmd!
        autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved,CursorMovedI * lua vim.lsp.buf.clear_references()
      augroup END
      ]]
    end, -- end config
  }, -- end LSP block

  { -- auto completion
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-cmdline',
    }, -- end dependencies
    config = function()
      --- 補完候補をポップアップ, 1つでも補完候補をポップアップ表示, 補完候補を自動選択しない
      vim.o.completeopt = "menu,menuone,noselect"

      local cmp = require('cmp')

      cmp.setup({
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-h>'] = cmp.mapping.select_prev_item(),
          ['<C-l>'] = cmp.mapping.select_next_item(),
          ['<C-k>'] = cmp.mapping.scroll_docs(-4),
          ['<C-j>'] = cmp.mapping.scroll_docs(4),
          ['<C-y>'] = cmp.mapping.confirm({ select = true }),
          ['<C-c>'] = cmp.mapping.close(),
        }, -- end mapping
        sources = {
          { name = 'nvim_lsp' },
          { name = 'emoji' },
          { name = 'buffer' },
          -- { name = 'calc' },
          { name = 'path' },
          { name = 'cmdline' },
        }, -- end sources
      }) -- end cmp.setup
    end -- end config
  }, -- end auto completion
}

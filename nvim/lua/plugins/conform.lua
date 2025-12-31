return {
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'williamboman/mason.nvim',
    },
    config = function()
      local conform = require 'conform'

      conform.setup {
        formatters_by_ft = {
          lua = { 'stylua' },

          python = {
            'ruff_fix',
            'ruff_format',
          },

          javascript = { 'prettier' },
          typescript = { 'prettier' },
          javascriptreact = { 'prettier' },
          typescriptreact = { 'prettier' },

          go = { 'gofmt' },
        },

        formatters = {
          prettier = {},
        },
      }

      vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
        conform.format {
          lsp_fallback = false,
          timeout_ms = 2000,
        }
      end, { desc = 'Format buffer' })
    end,
  },
}

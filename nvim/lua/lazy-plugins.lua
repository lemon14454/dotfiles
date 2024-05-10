require('lazy').setup {
  require 'custom.plugins.theme',
  require 'custom.plugins.autoformat',
  require 'custom.plugins.autopairs',
  require 'custom.plugins.debug',
  require 'custom.plugins.gitsigns',
  require 'custom.plugins.lint',
  require 'custom.plugins.lsp',
  require 'custom.plugins.mini',
  require 'custom.plugins.nvim-cmp',
  require 'custom.plugins.telescope',
  require 'custom.plugins.treesitter',

  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'tpope/vim-sleuth',
  { 'numToStr/Comment.nvim', opts = {} },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}

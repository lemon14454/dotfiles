return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('rose-pine').setup {
      variant = 'moon',
      dark_variant = 'moon',
      bold_vert_split = true,
      disable_background = true,
      disable_float_background = true,
    }
  end,
  init = function()
    vim.opt.background = 'dark'
    vim.cmd.colorscheme 'rose-pine'
    vim.cmd.hi 'Comment gui=none'
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end,
}

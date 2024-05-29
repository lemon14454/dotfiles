return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = true }

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    --  https://github.com/echasnovski/mini.nvim
  end,
}

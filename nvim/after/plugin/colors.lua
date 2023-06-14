vim.opt.background = "dark"

require('rose-pine').setup({
    variant = 'moon',
    dark_variant = 'moon',
    bold_vert_split = true,
    disable_background = true,
    disable_float_background = true
})

vim.cmd("colorscheme rose-pine")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

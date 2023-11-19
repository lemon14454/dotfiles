require('nvim-treesitter.configs').setup {
    ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp', 'javascript', 'typescript', 'css', 'json', 'go' },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_heighlighting = false
    },

}

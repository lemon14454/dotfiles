local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "sainnhe/gruvbox-material" }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use("folke/zen-mode.nvim")

    use("hoob3rt/lualine.nvim")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/nvim-cmp")
    use("neovim/nvim-lspconfig")
    use('jose-elias-alvarez/null-ls.nvim')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')

    use('glepnir/lspsaga.nvim')
    use('L3MON4D3/LuaSnip')

    use('windwp/nvim-autopairs')
    use('windwp/nvim-ts-autotag')
end)

return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = ...
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        "numToStr/Comment.nvim",
        lazy = false
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy"
    },
    {
        "mbbill/undotree"
    },
    {
        "RRethy/vim-illuminate"
    },
    {
        "stevearc/oil.nvim"
    },
    {
        "neovim/nvim-lspconfig"
    },
    {
        "slotos/telescope-lsp-handlers.nvim"
    },
    {
        "simrat39/symbols-outline.nvim"
    },
}

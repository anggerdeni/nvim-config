return {
    -- themes
    {
        'navarasu/onedark.nvim',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
    },
    -- {
    --     'folke/tokyonight.nvim',
    --     lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    --     priority = 1000, -- make sure to load this before all the other start plugins
    -- }

    -- git related
    { 'tpope/vim-fugitive' },
    { 'lewis6991/gitsigns.nvim' },

    -- LSP
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'ray-x/lsp_signature.nvim' },

    { 'folke/neodev.nvim' },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },

    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
    },

    { 'lukas-reineke/indent-blankline.nvim' },
    { 'nvim-lualine/lualine.nvim' },           -- Fancier statusline
    { 'lukas-reineke/indent-blankline.nvim' }, -- Add indentation guides even on blank lines
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },

    { 'tpope/vim-sleuth' }, -- Detect tabstop and shiftwidth automatically

    { 'mfussenegger/nvim-lint' },
    { 'xiyaowong/nvim-transparent' },
    { 'theprimeagen/harpoon' },
    { 'mbbill/Undotree' },

    {
        'folke/trouble.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    {
        'folke/zen-mode.nvim',
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- plugins/rest.lua
    {
        'rest-nvim/rest.nvim',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
    },

    -- { 'f-person/git-blame.nvim' }, -- causing severe lag on relatively large monorepo
}

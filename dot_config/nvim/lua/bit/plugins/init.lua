return {
    {
        "tjdevries/express_line.nvim",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        config = true,
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "godlygeek/tabular",
        cmd = "Tabularize"
    },
    {
        "nvim-lua/plenary.nvim",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "airblade/vim-gitgutter",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "ThePrimeagen/harpoon",
        keys = {"<leader>hh", "<leader>hd", "<leader>ha"},
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "scrooloose/nerdcommenter",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "williamboman/mason.nvim",
        cmd = {"Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonUpdate", "MasonLog"},
    },
    {
        "onsails/lspkind.nvim",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "nvim-treesitter/playground",
        cmd = "TSPlaygroundToggle",
    },
    {
        "kamailio/vim-kamailio-syntax",
        ft = "kamailio",
    },
    {
        "wakatime/vim-wakatime",
        event = "InsertEnter",
    },
    {
        "github/copilot.vim",
        event = "InsertEnter",
    },
    {
        "christoomey/vim-tmux-navigator",
        event= "VeryLazy"
    },
    {
        "folke/todo-comments.nvim",
        event= "VeryLazy"
    },
    {
        "tpope/vim-fugitive",
        cmd = "Git",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" }, -- https://github.com/rafamadriz/friendly-snippets
        event = { "BufReadPre", "BufNewFile" },
        build = "make install_jsregexp"
    },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope"
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter"
    },
    {
        "tpope/vim-dispatch",
        event = "VeryLazy"
    },
    {
        "dhruvasagar/vim-table-mode",
        cmd = "TableModeEnable"
    },
    {
        "APZelos/blamer.nvim",
        cmd = "BlamerToggle"
    },
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end
    },
    {
        "mbbill/undotree",
        cmd = { "UndotreeToggle" }
    },
    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = true,
        opts = {
            rocks = { "magick" },
        },
    },
    {
        "3rd/image.nvim",
        dependencies = { "luarocks.nvim" },
        config = function()
            -- ...
        end
    },
    {
        "nvim-neorg/neorg",
        dependencies = { "luarocks.nvim" },
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
    },
    {
        dir = "~/documents/codes/personal/nvim-devdocs",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {}
    },
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        keys = {"<leader>l"}
    },
    {
        "brenoprata10/nvim-highlight-colors",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
    }
}

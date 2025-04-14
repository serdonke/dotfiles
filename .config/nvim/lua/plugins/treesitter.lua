return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects", -- TODO: fix textobjects not working, removed conf for now
    },

    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim",
            "vim", "vimdoc", "query",
            "rust", "cpp", "python" },

            auto_install = false,

            highlight = {
                enable = true,
            },

            -- incremental_selection = {
            --     enable = true,
            --     keymaps = {
            --         init_selection = "<leader>ss",
            --         node_incremental = "<leader>si",
            --         scope_incremental = "<leader>sc",
            --         node_decremental = "<leader>sd",
            --     },
            -- },
            --
        })
    end,
}

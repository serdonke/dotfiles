return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000, -- does dis even work?
    config = function()
        require("tokyonight").setup({
            style = "storm",
            styles = {
                keywords = { italic = false },
            },
            transparent = true,
            cache = true,
        })
        vim.cmd.colorscheme("tokyonight")
    end,
}

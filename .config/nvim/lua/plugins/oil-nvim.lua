return {
    "stevearc/oil.nvim",
    lazy = false,
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            
            columns = {
                "icon",
            },

            watch_for_changes = true,

            view_options = {
                show_hidden = false,
            },

        })

        vim.keymap.set("n", "<leader>fv", ":Oil<CR>", { silent = true, desc = "Open Oil file explorer"})
    end
}

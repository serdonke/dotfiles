require("plugins.lazy-nvim")

require("lazy").setup({
    require "plugins.colorscheme",
    require "plugins.treesitter",
    require "plugins.statusline",
    require "plugins.misc",
    require "plugins.telescope",
    require "plugins.oil-nvim",
})

vim.cmd.colorscheme("tokyonight")

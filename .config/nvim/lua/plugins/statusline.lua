return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        "bwpge/lualine-pretty-path",
    },
    config = function()
        local mode = {
            "mode",
            fmt = function(str)
                local words = vim.split(str, "-")
                if #words > 1 then
                    local initials = ""
                    for _, word in ipairs(words) do
                        initials = initials .. word:sub(1, 1)
                    end
                    return " " .. initials
                else
                    return " " .. str:sub(1, 1):upper()
                end
            end,
        }

        require("lualine").setup({
            options = {
                theme = vim.g.colors_name or "auto", --NOTE, might break later
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            },

            sections = {
                lualine_a = { mode },
                lualine_c = { "pretty_path" },
                lualine_x = {},
            },

            inactive_sections = {
                lualine_c = { "pretty_path" }
            }
        })
    end,
}

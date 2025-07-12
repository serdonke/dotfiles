return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        "bwpge/lualine-pretty-path",
    },
    config = function()

        -- Bubbles config for lualine
        -- Author: lokesh-krishna
        -- MIT license, see LICENSE for more details.

        -- stylua: ignore

        require('lualine').setup {
            options = {
                theme = bubbles_theme,
                component_separators = '',
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                lualine_b = { 'branch' },
                lualine_c = {
                    '%=', 'pretty_path'
                },
                lualine_x = {},
                lualine_y = { 'progress' },
                lualine_z = {
                    { 'location', separator = { right = '' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = { 'pretty_path' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' },
            },
            tabline = {},
            extensions = {},
        }
    end,
}

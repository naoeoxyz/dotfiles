
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lualine_theme = require'lualine.themes.horizon'
        require('lualine').setup({
            options = { theme = lualine_theme },
        })
    end
}

return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "zathura"

        --vim.g.maplocalleader = ","
        vim.g.tex_flavor = 'latex'
        vim.g.tex_complete = 'tex'
        vim.g.vimtex_view_general_viewer = 'zathura'
        vim.g.vimtex_completion_enabled = 1
        vim.g.vimtex_complete_recursive_cite = 1
        vim.g.vimtex_xdotool_sync = 1
        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_complete_enabled = 1
        vim.g.vimtex_fold_enabled=1
        vim.g.vimtex_syntax_nospell_comments = 1
        vim.g.vimtex_compiler_latexmk = { options = {'-pdf', '-interaction=nonstopmode', '-synctex=1'}}
    end
}


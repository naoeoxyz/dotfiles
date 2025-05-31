return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                },
            },
        })
		vim.keymap.set("n", "<C-n>", "<Cmd>Neotree filesystem toggle right<CR>", {})
		vim.keymap.set("n", "<leader>bf", "<Cmd>Neotree buffers reveal float<CR>", {})
	end,
}

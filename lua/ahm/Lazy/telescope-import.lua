-- Add this to your plugin manager configuration
return {
	{
		"piersolenski/telescope-import.nvim",
		dependencies = "nvim-telescope/telescope.nvim",
		config = function()
			local telescope = require("telescope")
			telescope.load_extension("import")

			-- Set custom keymap for Telescope Import
			vim.api.nvim_set_keymap(
				"n", -- Normal mode
				"<leader>ff", -- Key combination
				":Telescope import<CR>", -- Command to execute
				{ noremap = true, silent = true } -- Options
			)
		end,
	},
}

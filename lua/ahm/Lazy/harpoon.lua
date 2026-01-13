return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
		config = function()
			require("harpoon"):setup()

			-- Load Harpoon keymaps from dedicated keymaps file
			require("ahm.plugin_keymaps.harpoon")
		end,
	},
}

-- Harpoon keymaps and Telescope integration
local harpoon = require("harpoon")

-- Telescope integration for Harpoon UI
local conf = require("telescope.config").values

local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

-- Keymaps
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end, { desc = "Harpoon: Add file" })

vim.keymap.set("n", "<C-e>", function()
	toggle_telescope(harpoon:list())
end, { desc = "Harpoon: Open with Telescope" })

vim.keymap.set("n", "<C-1>", function()
	harpoon:list():select(1)
end, { desc = "Harpoon: Select 1" })

vim.keymap.set("n", "<C-2>", function()
	harpoon:list():select(2)
end, { desc = "Harpoon: Select 2" })

vim.keymap.set("n", "<C-3>", function()
	harpoon:list():select(3)
end, { desc = "Harpoon: Select 3" })

vim.keymap.set("n", "<C-4>", function()
	harpoon:list():select(4)
end, { desc = "Harpoon: Select 4" })

vim.keymap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end, { desc = "Harpoon: Previous" })

vim.keymap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end, { desc = "Harpoon: Next" })

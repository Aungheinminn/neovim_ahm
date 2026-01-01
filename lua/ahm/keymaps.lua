vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Map Esc to save the file and exit insert mode
vim.api.nvim_set_keymap("i", "<Esc>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Map 4 to undo
vim.api.nvim_set_keymap("n", "u", "u", { noremap = true, silent = true })

-- Map 5 to redo
vim.api.nvim_set_keymap("n", "R", "<C-r>", { noremap = true, silent = true })

-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<leader>se", "<Cmd>Neotree reveal float<CR>")

-- Telescope highlights
vim.api.nvim_set_hl(0, "TelescopePrompt", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeTitle", { bg = "none" })

-- NeoTree highlights
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeFloatNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "none" })

local bg = current_bg_color()

if bg then
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
	vim.api.nvim_set_hl(0, "NeoTreeFloatNormal", { bg = bg })
	vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = bg })
	vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { bg = bg })
end

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

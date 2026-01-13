-- Fold keymaps for nvim-ufo
local ufo = require("ufo")

-- Open/close all folds
vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Open all folds" })
vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Close all folds" })

-- Custom fold keymaps
vim.keymap.set("n", "-", "<cmd>foldclose<CR>", { desc = "Close code fold" })
vim.keymap.set("n", "+", "<cmd>foldopen<CR>", { desc = "Open code fold" })

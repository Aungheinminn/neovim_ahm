-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_user_command("FormatDisable", function()
	vim.g.disable_autoformat = true
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
	vim.g.disable_autoformat = false
end, {
	desc = "Re-enable autoformat-on-save",
})

vim.api.nvim_create_augroup("AutoFormatAug", { clear = true })

vim.api.nvim_create_autocmd("BufLeave", {
	group = "AutoFormatAug",
	pattern = "*",
	callback = function(a)
		require("conform").format({ async = true, lsp_fallback = true, bufnr = a.buf })
	end,
})

-- -- Function to show the command line
-- local function show_cmdline()
--     vim.o.cmdheight = 1
-- end
--
-- -- Function to hide the command line
-- local function hide_cmdline()
--     vim.o.cmdheight = 0
-- end
--
-- -- Timer to automatically hide the command line
-- local cmdline_timer = vim.loop.new_timer()
--
-- -- Function to start the timer to hide the command line after 3 seconds
-- local function start_hide_cmdline_timer()
--     cmdline_timer:start(3000, 0, vim.schedule_wrap(hide_cmdline))
-- end
--
-- -- Auto command to show the command line when entering command mode
-- vim.api.nvim_create_autocmd("CmdlineEnter", {
--     callback = function()
--         cmdline_timer:stop() -- Stop any previous timer
--         show_cmdline()
--     end,
-- })
--
-- -- Auto command to start the timer to hide the command line when leaving command mode
-- vim.api.nvim_create_autocmd("CmdlineLeave", {
--     callback = start_hide_cmdline_timer,
-- })
--
-- -- Initially hide the command line
-- hide_cmdline()


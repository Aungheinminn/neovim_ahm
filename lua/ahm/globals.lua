function _G.current_bg_color()
	local normal_hl = vim.api.nvim_get_hl(0, { name = "Normal" })

	if normal_hl then
		return string.format("#%06x", normal_hl.bg)
	else
		-- Return nil if no highlight information was found
		return nil
	end
end

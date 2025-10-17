local M = {}

function M.setup()
	vim.g.colors_name = "wildberries"

	local highlights = vim.tbl_extend(
		"force",
		require("wildberries.groups.base"),
		require("wildberries.groups.treesitter"),
		require("wildberries.groups.snacks")
	)

	for group, properties in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, properties)
	end
end

return M

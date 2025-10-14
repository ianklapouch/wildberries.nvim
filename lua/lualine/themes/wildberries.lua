local colors = require("wildberries.colors")

return {
	normal = {
		a = { bg = colors.green, fg = colors.pink, gui = "bold" },
		b = { bg = colors.grape, fg = colors.pink },
		c = { bg = colors.grape, fg = colors.pink },
	},
	insert = {
		a = { bg = colors.yellow, fg = colors.pink, gui = "bold" },
		b = { bg = colors.grape, fg = colors.pink },
		c = { bg = colors.grape, fg = colors.pink },
	},
	visual = {
		a = { bg = colors.purple, fg = colors.pink, gui = "bold" },
		b = { bg = colors.grape, fg = colors.pink },
		c = { bg = colors.grape, fg = colors.pink },
	},
	replace = {
		a = { bg = colors.green, fg = colors.green, gui = "bold" },
		b = { bg = colors.grape, fg = colors.pink },
		c = { bg = colors.grape, fg = colors.pink },
	},
	command = {
		a = { bg = colors.cherry, fg = colors.green, gui = "bold" },
		b = { bg = colors.grape, fg = colors.pink },
		c = { bg = colors.grape, fg = colors.pink },
	},
	inactive = {
		a = { bg = colors.green, fg = colors.green, gui = "bold" },
		b = { bg = colors.grape, fg = colors.pink },
		c = { bg = colors.grape, fg = colors.pink },
	},
}

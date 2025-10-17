local colors = require("wildberries.colors")

return {
	SnacksNotifierDebug = { fg = colors.pink, bg = colors.black_berry },
	SnacksNotifierBorderDebug = { fg = colors.comment, bg = colors.black_berry },
	SnacksNotifierIconDebug = { fg = colors.comment },
	SnacksNotifierTitleDebug = { fg = colors.comment },
	SnacksNotifierError = { fg = colors.pink, bg = colors.black_berry },
	SnacksNotifierBorderError = { fg = colors.red, bg = colors.black_berry },
	SnacksNotifierIconError = { fg = colors.red },
	SnacksNotifierTitleError = { fg = colors.red },
	SnacksNotifierInfo = { fg = colors.pink, bg = colors.black_berry },
	SnacksNotifierBorderInfo = { fg = colors.blue, bg = colors.black_berry },
	SnacksNotifierIconInfo = { fg = colors.blue },
	SnacksNotifierTitleInfo = { fg = colors.blue },
	SnacksNotifierTrace = { fg = colors.pink, bg = colors.black_berry },
	SnacksNotifierBorderTrace = { fg = colors.purple, bg = colors.black_berry },
	SnacksNotifierIconTrace = { fg = colors.purple },
	SnacksNotifierTitleTrace = { fg = colors.purple },
	SnacksNotifierWarn = { fg = colors.pink, bg = colors.black_berry },
	SnacksNotifierBorderWarn = { fg = colors.yellow, bg = colors.black_berry },
	SnacksNotifierIconWarn = { fg = colors.yellow },
	SnacksNotifierTitleWarn = { fg = colors.yellow },

	-- Dashboard
	SnacksDashboardDesc = { fg = colors.pink },
	SnacksDashboardFooter = { fg = colors.pink },
	SnacksDashboardHeader = { fg = colors.pink },
	SnacksDashboardIcon = { fg = colors.green },
	SnacksDashboardKey = { fg = colors.green },
	SnacksDashboardSpecial = { fg = colors.purple },
	SnacksDashboardDir = { fg = colors.pink },

	-- Profiler
	SnacksProfilerIconInfo = { bg = colors.blue, fg = colors.black_berry },
	SnacksProfilerBadgeInfo = { bg = colors.blue, fg = colors.black_berry },
	SnacksScratchKey = { bg = colors.blue, fg = colors.black_berry }, -- SnacksProfilerIconInfo
	SnacksScratchDesc = { bg = colors.blue, fg = colors.black_berry }, -- SnacksProfilerBadgeInfo
	SnacksProfilerIconTrace = { bg = colors.purple, fg = colors.black_berry },
	SnacksProfilerBadgeTrace = { bg = colors.purple, fg = colors.black_berry },
	SnacksIndent = { fg = colors.purple, nocombine = true },
	SnacksIndentScope = { fg = colors.blue, nocombine = true },
	SnacksZenIcon = { fg = colors.purple },
	SnacksInputIcon = { fg = colors.blue },
	SnacksInputBorder = { fg = colors.yellow },
	SnacksInputTitle = { fg = colors.yellow },

	-- Picker
	SnacksPickerInputBorder = { fg = colors.pink, bg = colors.pink },
	SnacksPickerInputTitle = { fg = colors.pink, bg = colors.grape },
	SnacksPickerBoxTitle = { fg = colors.pink, bg = colors.purple },
	SnacksPickerSelected = { fg = colors.purple, bg = colors.cherry },
	SnacksPickerToggle = { bg = colors.blue, fg = colors.black_berry }, -- SnacksProfilerBadgeInfo
	SnacksPickerPickWinCurrent = { fg = colors.pink, bg = colors.purple, bold = true },
	SnacksPickerPickWin = { fg = colors.pink, bg = colors.grape, bold = true },
}

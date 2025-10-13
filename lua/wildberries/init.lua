-- local lualine = require("lualine")
local M = {}

function M.setup()
	local colors = {
		-- Background Colors
		black_berry = "#19002E",
		grape = "#240041",
		cherry = "#900048",
		-- Foreground Colors
		pink = "#ff0e82",
		green = "#00ffb7",
		purple = "#c79bff",
		-- Auxiliar Colors
		orange = "#ff4500",
		red = "#d70040",
		yellow = "#ffd700",
		blue = "#399ee6",
		aqua = "#00f7e2",
		-- Utils
		comment = "#490087",
		selection = "#264f78",
	}

	local highlights = {
		-- Foo = { bg = colors.red, fg = colors.blue },
		Comment = { fg = colors.comment, italic = true }, -- any comment
		-- ColorColumn = { bg = c.black }, -- used for the columns set with 'colorcolumn'
		-- Conceal = { fg = c.dark5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = colors.green, bg = colors.red }, -- character under the cursor
		lCursor = { fg = colors.green, bg = colors.green }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = { bg = colors.selection }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		-- Directory = { fg = c.blue }, -- directory names (and other special names in listings)
		DiffAdd = { bg = colors.green }, -- diff mode: Added line |diff.txt|
		DiffChange = { bg = colors.yellow }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { bg = colors.red }, -- diff mode: Deleted line |diff.txt|
		-- DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		-- ErrorMsg = { fg = c.error }, -- error messages on the command line
		-- VertSplit = { fg = c.border }, -- the column separating vertically split windows
		WinSeparator = { fg = colors.pink, bold = true }, -- the column separating vertically split windows
		-- Folded = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
		-- FoldColumn = { bg = opts.transparent and c.none or c.bg, fg = c.comment }, -- 'foldcolumn'
		-- SignColumn = { bg = opts.transparent and c.none or c.bg, fg = c.fg_gutter }, -- column where |signs| are displayed
		-- SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
		-- Substitute = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
		LineNr = { fg = colors.purple }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = colors.green, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- LineNrAbove = { fg = c.fg_gutter },
		-- LineNrBelow = { fg = c.fg_gutter },
		MatchParen = { fg = colors.yellow, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
		-- MoreMsg = { fg = c.blue }, -- |more-prompt|
		-- NonText = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = colors.pink, bg = colors.black_berry }, -- normal text
		-- NormalNC = { fg = c.fg, bg = opts.transparent and c.none or opts.dim_inactive and c.bg_dark or c.bg }, -- normal text in non-current windows
		-- NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
		NormalFloat = { fg = colors.pink, bg = colors.grape }, -- Normal text in floating windows.
		-- FloatBorder = { fg = colors.pink, bg = colors.yellow },
		FloatTitle = { fg = colors.pink, bg = colors.purple },
		-- Pmenu = { bg = c.bg_popup, fg = c.fg }, -- Popup menu: normal item.
		-- PmenuMatch = { bg = c.bg_popup, fg = c.blue1 }, -- Popup menu: Matched text in normal item.
		-- PmenuSel = { bg = Util.blend_bg(c.fg_gutter, 0.8) }, -- Popup menu: selected item.
		-- PmenuMatchSel = { bg = Util.blend_bg(c.fg_gutter, 0.8), fg = c.blue1 }, -- Popup menu: Matched text in selected item.
		-- PmenuSbar = { bg = Util.blend_fg(c.bg_popup, 0.95) }, -- Popup menu: scrollbar.
		-- PmenuThumb = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
		-- Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		-- Search = { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		-- IncSearch = { bg = c.orange, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- CurSearch = "IncSearch",
		-- SpecialKey = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		-- StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
		-- StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine = { bg = c.bg_statusline, fg = c.fg_gutter }, -- tab pages line, not active tab page label
		-- TabLineFill = { bg = c.black }, -- tab pages line, where there are no labels
		-- TabLineSel = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
		-- Title = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = colors.selection }, -- Visual mode selection
		-- VisualNOS = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = colors.yellow }, -- warning messages
		-- Whitespace = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- WildMenu = { bg = c.bg_visual }, -- current match in 'wildmenu' completion
		-- WinBar = "StatusLine", -- window bar
		-- WinBarNC = "StatusLineNC", -- window bar in inactive windows
		-- Bold = { bold = true, fg = c.fg }, -- (preferred) any bold text
		-- Character = { fg = c.green }, --  a character constant: 'c', '\n'
		Constant = { fg = colors.pink }, -- (preferred) any constant
		-- Debug = { fg = c.orange }, --    debugging statements
		-- Delimiter = "Special", --  character that needs attention
		-- Error = { fg = c.error }, -- (preferred) any erroneous construct
		Function = { fg = colors.green }, -- function name (also: methods for classes)
		Identifier = { fg = colors.pink }, -- (preferred) any variable name
		-- Italic = { italic = true, fg = c.fg }, -- (preferred) any italic text
		Keyword = { fg = colors.blue }, --  any other keyword
		Boolean = { fg = colors.orange }, --  a boolean constant: TRUE, false
		Number = { fg = colors.orange }, -- a number constant: 234, 0xff
		Operator = { fg = colors.orange }, -- "sizeof", "+", "*", etc.
		-- PreProc = { fg = c.cyan }, -- (preferred) generic Preprocessor
		-- Special = { fg = c.blue1 }, -- (preferred) any special symbol
		-- Statement = { fg = c.magenta }, -- (preferred) any statement
		String = { fg = colors.purple }, --   a string constant: "this is a string"
		-- Todo = { bg = c.yellow, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		-- Type = { fg = c.blue1 }, -- (preferred) int, long, char, etc.
		-- Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
		-- debugBreakpoint = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
		-- debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
		-- dosIniLabel = "@property",
		-- helpCommand = { bg = c.terminal_black, fg = c.blue },
		-- htmlH1 = { fg = c.magenta, bold = true },
		-- htmlH2 = { fg = c.blue, bold = true },
		qfFileName = { fg = colors.blue },
		-- qfLineNr = { fg = c.dark5 },
	}

	local treesitter_highlights = {
		-- ["@annotation"] = "PreProc",
		-- ["@attribute"] = "PreProc",
		["@boolean"] = "Boolean",
		-- ["@character"] = "Character",
		-- ["@character.printf"] = "SpecialChar",
		-- ["@character.special"] = "SpecialChar",
		-- ["@comment"] = "Comment",
		-- ["@comment.error"] = { fg = c.error },
		-- ["@comment.hint"] = { fg = c.hint },
		-- ["@comment.info"] = { fg = c.info },
		-- ["@comment.note"] = { fg = c.hint },
		-- ["@comment.todo"] = { fg = c.todo },
		-- ["@comment.warning"] = { fg = c.warning },
		-- ["@constant"] = "Constant",
		-- ["@constant.builtin"] = "Special",
		-- ["@constant.macro"] = "Define",
		["@constructor"] = { fg = colors.yellow }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		-- ["@constructor.tsx"] = { fg = c.blue1 },
		-- ["@diff.delta"] = "DiffChange",
		-- ["@diff.minus"] = "DiffDelete",
		-- ["@diff.plus"] = "DiffAdd",
		["@function"] = "Function",
		-- ["@function.builtin"] = "Special",
		-- ["@function.call"] = "@function",
		-- ["@function.macro"] = "Macro",
		-- ["@function.method"] = "Function",
		-- ["@function.method.call"] = "@function.method",
		["@keyword"] = { fg = colors.blue }, -- For keywords that don't fall in previous categories.
		-- ["@keyword.conditional"] = "Conditional",
		-- ["@keyword.coroutine"] = "@keyword",
		-- ["@keyword.debug"] = "Debug",
		-- ["@keyword.directive"] = "PreProc",
		-- ["@keyword.directive.define"] = "Define",
		-- ["@keyword.exception"] = "Exception",
		-- ["@keyword.function"] = { fg = c.magenta, style = opts.styles.functions }, -- For keywords used to define a function.
		-- ["@keyword.import"] = "Include",
		-- ["@keyword.operator"] = "@operator",
		-- ["@keyword.repeat"] = "Repeat",
		-- ["@keyword.return"] = "@keyword",
		-- ["@keyword.storage"] = "StorageClass",
		-- ["@label"] = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
		-- ["@markup"] = "@none",
		-- ["@markup.emphasis"] = { italic = true },
		-- ["@markup.environment"] = "Macro",
		-- ["@markup.environment.name"] = "Type",
		-- ["@markup.heading"] = "Title",
		-- ["@markup.italic"] = { italic = true },
		-- ["@markup.link"] = { fg = c.teal },
		-- ["@markup.link.label"] = "SpecialChar",
		-- ["@markup.link.label.symbol"] = "Identifier",
		-- ["@markup.link.url"] = "Underlined",
		-- ["@markup.list"] = { fg = c.blue5 }, -- For special punctutation that does not fall in the categories before.
		-- ["@markup.list.checked"] = { fg = c.green1 }, -- For brackets and parens.
		-- ["@markup.list.markdown"] = { fg = c.orange, bold = true },
		-- ["@markup.list.unchecked"] = { fg = c.blue }, -- For brackets and parens.
		-- ["@markup.math"] = "Special",
		-- ["@markup.raw"] = "String",
		-- ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.blue },
		-- ["@markup.strikethrough"] = { strikethrough = true },
		-- ["@markup.strong"] = { bold = true },
		-- ["@markup.underline"] = { underline = true },
		-- ["@module"] = "Include",
		-- ["@module.builtin"] = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
		["@namespace.builtin"] = "@variable.builtin",
		-- ["@none"] = {},
		["@number"] = "Number",
		["@number.float"] = "Float",
		-- ["@operator"] = { fg = c.blue5 }, -- For any operator: `+`, but also `->` and `*` in C.
		-- ["@property"] = { fg = c.green1 },
		["@punctuation.bracket"] = { fg = colors.yellow }, -- For brackets and parens.
		["@punctuation.delimiter"] = { fg = colors.blue5 }, -- For delimiters ie: `.`
		-- ["@punctuation.special"] = { fg = c.blue5 }, -- For special symbols (e.g. `{}` in string interpolation)
		-- ["@punctuation.special.markdown"] = { fg = c.orange }, -- For special symbols (e.g. `{}` in string interpolation)
		["@string"] = "String",
		-- ["@string.documentation"] = { fg = c.yellow },
		-- ["@string.escape"] = { fg = c.magenta }, -- For escape characters within a string.
		-- ["@string.regexp"] = { fg = c.blue6 }, -- For regexes.
		-- ["@tag"] = "Label",
		-- ["@tag.attribute"] = "@property",
		-- ["@tag.delimiter"] = "Delimiter",
		-- ["@tag.delimiter.tsx"] = { fg = Util.blend_bg(c.blue, 0.7) },
		-- ["@tag.tsx"] = { fg = c.red },
		-- ["@tag.javascript"] = { fg = c.red },
		-- ["@type"] = "Type",
		-- ["@type.builtin"] = { fg = Util.blend_bg(c.blue1, 0.8) },
		-- ["@type.definition"] = "Typedef",
		-- ["@type.qualifier"] = "@keyword",
		["@variable"] = { fg = colors.pink }, -- Any variable name that does not have another highlight.
		-- ["@variable.builtin"] = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
		-- ["@variable.member"] = { fg = c.green1 }, -- For fields.
		-- ["@variable.parameter"] = { fg = c.yellow }, -- For parameters of a function.
		-- ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.yellow, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
	}

	local snacks_highlights = {
		-- SnacksNotifierDebug = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.comment, 0.4), bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierIconDebug = { fg = c.comment },
		-- SnacksNotifierTitleDebug = { fg = c.comment },
		-- SnacksNotifierError = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierIconError = { fg = c.error },
		-- SnacksNotifierTitleError = { fg = c.error },
		-- SnacksNotifierInfo = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierBorderInfo = { fg = Util.blend_bg(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierIconInfo = { fg = c.info },
		-- SnacksNotifierTitleInfo = { fg = c.info },
		-- SnacksNotifierTrace = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.purple, 0.4), bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierIconTrace = { fg = c.purple },
		-- SnacksNotifierTitleTrace = { fg = c.purple },
		-- SnacksNotifierWarn = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierBorderWarn = { fg = Util.blend_bg(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
		-- SnacksNotifierIconWarn = { fg = c.warning },
		-- SnacksNotifierTitleWarn = { fg = c.warning },
		-- Dashboard
		SnacksDashboardDesc = { fg = colors.pink },
		SnacksDashboardFooter = { fg = colors.pink },
		SnacksDashboardHeader = { fg = colors.pink },
		SnacksDashboardIcon = { fg = colors.green },
		SnacksDashboardKey = { fg = colors.green },
		SnacksDashboardSpecial = { fg = colors.purple },
		SnacksDashboardDir = { fg = colors.pink },
		-- Profiler
		-- SnacksProfilerIconInfo = { bg = Util.blend_bg(c.blue1, 0.3), fg = c.blue1 },
		-- SnacksProfilerBadgeInfo = { bg = Util.blend_bg(c.blue1, 0.1), fg = c.blue1 },
		SnacksScratchKey = "SnacksProfilerIconInfo",
		SnacksScratchDesc = "SnacksProfilerBadgeInfo",
		-- SnacksProfilerIconTrace = { bg = Util.blend_bg(c.blue7, 0.3), fg = c.dark3 },
		-- SnacksProfilerBadgeTrace = { bg = Util.blend_bg(c.blue7, 0.1), fg = c.dark3 },
		-- SnacksIndent = { fg = c.fg_gutter, nocombine = true },
		-- SnacksIndentScope = { fg = c.blue1, nocombine = true },
		-- SnacksZenIcon = { fg = c.purple },
		-- SnacksInputIcon = { fg = c.blue1 },
		-- SnacksInputBorder = { fg = c.yellow },
		-- SnacksInputTitle = { fg = c.yellow },
		-- Picker
		-- SnacksPickerInputBorder = { fg = colors.pink, bg = colors.pink },
		SnacksPickerInputTitle = { fg = colors.pink, bg = colors.pink },
		SnacksPickerBoxTitle = { fg = colors.pink, bg = colors.purple },
		SnacksPickerSelected = { fg = colors.purple },
		SnacksPickerToggle = "SnacksProfilerBadgeInfo",
		SnacksPickerPickWinCurrent = { fg = colors.pink, bg = colors.purple, bold = true },
		SnacksPickerPickWin = { fg = colors.pink, bg = colors.purple, bold = true },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	for group, opts in pairs(treesitter_highlights) do
		if type(opts) == "string" then
			vim.api.nvim_set_hl(0, group, { link = opts })
		else
			vim.api.nvim_set_hl(0, group, opts)
		end
	end

	for group, opts in pairs(snacks_highlights) do
		if type(opts) == "string" then
			vim.api.nvim_set_hl(0, group, { link = opts })
		else
			vim.api.nvim_set_hl(0, group, opts)
		end
	end

	-- lualine.setup({
	-- 	options = {
	-- 		theme = {
	-- 			a = { fg = colors.black_berry, bg = colors.pink, gui = "bold" },
	-- 			b = { fg = colors.pink, bg = colors.grape },
	-- 			c = { fg = colors.pink, bg = colors.black_berry },
	-- 		},
	-- 		section_separators = "",
	-- 		component_separators = "",
	-- 	},
	-- })
end

return M

local colors = require("wildberries.colors")
local M = {}

function M.setup()
	vim.g.colors_name = "wildberries"

	local highlights = {
		-- Cores base
		Normal = { fg = colors.pink, bg = colors.black_berry },
		NormalFloat = { fg = colors.purple, bg = colors.grape },
		FloatBorder = { fg = colors.pink, bg = colors.grape },

		-- Números de linha
		LineNr = { fg = colors.purple },
		CursorLineNr = { fg = colors.green },

		-- Cursor
		Cursor = { fg = colors.green },
		CursorLine = { bg = colors.grape },
		CursorColumn = { bg = colors.black_berry },

		-- Seleção
		Visual = { bg = colors.selection },
		VisualNOS = { bg = colors.selection },
		Search = { fg = "#ffffff", bg = colors.cherry },
		IncSearch = { fg = "#ffffff", bg = colors.cherry },
		Substitute = { fg = "#ffffff", bg = colors.cherry },

		-- Scrollbar e menus
		Pmenu = { fg = colors.purple, bg = colors.grape },
		PmenuSel = { fg = colors.black_berry, bg = colors.purple },
		PmenuSbar = { bg = colors.black_berry },
		PmenuThumb = { bg = colors.purple },

		-- Sidebar e arquivos (NvimTree)
		Directory = { fg = colors.purple },
		EndOfBuffer = { fg = colors.grape },
		NvimTreeNormal = { fg = colors.purple, bg = colors.grape },
		NvimTreeRootFolder = { fg = colors.pink },
		NvimTreeGitDirty = { fg = colors.yellow },
		NvimTreeGitNew = { fg = colors.green },
		NvimTreeGitDeleted = { fg = colors.red },
		NvimTreeSpecialFile = { fg = colors.green },
		NvimTreeWinSeparator = { fg = colors.cherry, bg = colors.cherry },
		NvimTreeFolderName = { fg = colors.purple },
		NvimTreeOpenedFolderName = { fg = colors.green },
		NvimTreeFolderIcon = { fg = colors.purple },

		-- Status Line
		StatusLine = { fg = colors.black_berry, bg = colors.purple },
		StatusLineNC = { fg = colors.purple, bg = colors.grape },

		-- Abas
		TabLine = { fg = colors.purple, bg = colors.grape },
		TabLineSel = { fg = "#ffffff", bg = colors.cherry },
		TabLineFill = { bg = colors.grape },

		-- Botões e widgets
		Question = { fg = "#ffffff", bg = colors.cherry },
		MoreMsg = { fg = "#ffffff", bg = colors.cherry },
		ModeMsg = { fg = "#ffffff", bg = colors.cherry },

		-- Destaques sintáticos
		Comment = { fg = colors.comment, italic = true },
		String = { fg = colors.purple },
		Number = { fg = colors.pink },
		Float = { fg = colors.pink },
		Boolean = { fg = colors.green },
		Identifier = { fg = colors.pink },
		Function = { fg = colors.green },
		Statement = { fg = colors.blue },
		Conditional = { fg = colors.blue },
		Repeat = { fg = colors.blue },
		Label = { fg = colors.blue },
		Operator = { fg = colors.blue },
		Keyword = { fg = colors.orange },
		Exception = { fg = colors.blue },
		PreProc = { fg = colors.orange },
		Include = { fg = colors.orange },
		Define = { fg = colors.orange },
		Macro = { fg = colors.orange },
		PreCondit = { fg = colors.orange },
		Type = { fg = colors.green },
		StorageClass = { fg = colors.blue },
		Structure = { fg = colors.green },
		Typedef = { fg = colors.green },
		Special = { fg = colors.blue },
		SpecialChar = { fg = colors.blue },
		Tag = { fg = colors.blue },
		Delimiter = { fg = colors.cherry },
		SpecialComment = { fg = colors.comment },
		Debug = { fg = colors.red },
		Underlined = { underline = true },
		Ignore = { fg = colors.comment },
		Error = { fg = colors.red, bg = colors.black_berry },
		Todo = { fg = colors.orange, bold = true, bg = colors.black_berry },

		-- Git
		diffAdded = { fg = colors.green },
		diffChanged = { fg = colors.blue },
		diffRemoved = { fg = colors.red },
		diffFile = { fg = colors.blue },
		diffNewFile = { fg = colors.green },
		diffOldFile = { fg = colors.red },

		-- HTML/XML
		htmlTag = { fg = colors.blue },
		htmlEndTag = { fg = colors.blue },
		htmlTagName = { fg = colors.blue },
		htmlArg = { fg = colors.orange },
		htmlSpecialChar = { fg = colors.pink },

		-- CSS
		cssBraces = { fg = colors.cherry },
		cssClassName = { fg = colors.orange },
		cssColor = { fg = colors.blue },
		cssIdentifier = { fg = colors.green },
		cssProp = { fg = colors.pink },
		cssValueNumber = { fg = colors.purple },
		cssValueLength = { fg = colors.purple },

		-- JavaScript/TypeScript
		javaScriptFunction = { fg = colors.blue },
		javaScriptIdentifier = { fg = colors.blue },
		javaScriptMember = { fg = colors.pink },
		typescriptImport = { fg = colors.orange },
		typescriptExport = { fg = colors.orange },

		-- Markdown
		markdownH1 = { fg = colors.orange, bold = true },
		markdownH2 = { fg = colors.orange, bold = true },
		markdownH3 = { fg = colors.orange, bold = true },
		markdownH4 = { fg = colors.orange, bold = true },
		markdownH5 = { fg = colors.orange, bold = true },
		markdownH6 = { fg = colors.orange, bold = true },
		markdownBold = { bold = true },
		markdownItalic = { italic = true },
		markdownCode = { fg = colors.blue },
		markdownLinkText = { fg = colors.green },
		markdownUrl = { fg = colors.cherry },

		-- Diagnosticos
		DiagnosticError = { fg = colors.red },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.blue },
		DiagnosticHint = { fg = colors.green },
		DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
		DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
		DiagnosticUnderlineHint = { sp = colors.green, undercurl = true },

		-- LSP
		LspReferenceText = { bg = colors.cherry },
		LspReferenceRead = { bg = colors.cherry },
		LspReferenceWrite = { bg = colors.cherry },

		-- Cmp (completion)
		CmpItemAbbr = { fg = colors.purple },
		CmpItemAbbrMatch = { fg = colors.green },
		CmpItemAbbrMatchFuzzy = { fg = colors.green },
		CmpItemMenu = { fg = colors.orange },
		CmpItemKind = { fg = colors.blue },

		-- Telescope
		TelescopeBorder = { fg = colors.pink, bg = colors.grape },
		TelescopeNormal = { fg = colors.purple, bg = colors.grape },
		TelescopeSelection = { fg = "#ffffff", bg = colors.cherry },
		TelescopeSelectionCaret = { fg = colors.green },
		TelescopeMultiSelection = { fg = colors.green },

		-- Indent guides
		IndentBlanklineChar = { fg = colors.comment },
		IndentBlanklineContextChar = { fg = colors.green },

		-- Winbar e separadores
		WinBar = { fg = colors.purple, bg = colors.grape },
		WinBarNC = { fg = colors.purple, bg = colors.black_berry },
		WinSeparator = { fg = colors.cherry },
		VertSplit = { fg = colors.cherry },

		-- Colunas e folds
		SignColumn = { bg = colors.black_berry },
		FoldColumn = { bg = colors.black_berry },
		Folded = { fg = colors.purple, bg = colors.grape },

		-- Texto especial
		NonText = { fg = colors.comment },
		SpecialKey = { fg = colors.comment },
		Whitespace = { fg = colors.comment },

		-- Outros
		MatchParen = { fg = colors.green, bg = colors.cherry, bold = true },
		WildMenu = { fg = colors.black_berry, bg = colors.green },
		Title = { fg = colors.orange, bold = true },
		Conceal = { fg = colors.comment },
		CursorIM = { fg = colors.black_berry, bg = colors.pink },
		ToolbarLine = { bg = colors.grape },
		ToolbarButton = { fg = "#ffffff", bg = colors.cherry },
		QuickFixLine = { bg = colors.cherry },
	}

	local treesitter_highlights = {
		["@annotation"] = { fg = colors.orange }, -- PreProc
		["@attribute"] = { fg = colors.orange }, -- PreProc
		["@boolean"] = { fg = colors.green }, -- Boolean
		["@character"] = { fg = colors.purple }, -- Character
		["@character.printf"] = { fg = colors.blue }, -- SpecialChar
		["@character.special"] = { fg = colors.blue }, -- SpecialChar
		["@comment"] = { fg = colors.comment, italic = true }, -- Comment
		["@comment.error"] = { fg = colors.red },
		["@comment.hint"] = { fg = colors.green },
		["@comment.info"] = { fg = colors.blue },
		["@comment.note"] = { fg = colors.green },
		["@comment.todo"] = { fg = colors.orange, bold = true },
		["@comment.warning"] = { fg = colors.yellow },
		["@constant"] = { fg = colors.pink }, -- Constant
		["@constant.builtin"] = { fg = colors.pink }, -- Special
		["@constant.macro"] = { fg = colors.orange }, -- Define
		["@constructor"] = { fg = colors.yellow }, -- For constructor calls and definitions
		["@constructor.tsx"] = { fg = colors.blue },
		["@diff.delta"] = { fg = colors.blue }, -- DiffChange
		["@diff.minus"] = { fg = colors.red }, -- DiffDelete
		["@diff.plus"] = { fg = colors.green }, -- DiffAdd
		["@function"] = { fg = colors.green }, -- Function
		["@function.builtin"] = { fg = colors.green }, -- Special
		["@function.call"] = { fg = colors.green }, -- @function
		["@function.macro"] = { fg = colors.orange }, -- Macro
		["@function.method"] = { fg = colors.green }, -- Function
		["@function.method.call"] = { fg = colors.green }, -- @function.method
		["@keyword"] = { fg = colors.blue }, -- For keywords that don't fall in previous categories
		["@keyword.conditional"] = { fg = colors.blue }, -- Conditional
		["@keyword.coroutine"] = { fg = colors.blue }, -- @keyword
		["@keyword.debug"] = { fg = colors.red }, -- Debug
		["@keyword.directive"] = { fg = colors.orange }, -- PreProc
		["@keyword.directive.define"] = { fg = colors.orange }, -- Define
		["@keyword.exception"] = { fg = colors.red }, -- Exception
		["@keyword.function"] = { fg = colors.blue }, -- For keywords used to define a function
		["@keyword.import"] = { fg = colors.orange }, -- Include
		["@keyword.operator"] = { fg = colors.blue }, -- @operator
		["@keyword.repeat"] = { fg = colors.blue }, -- Repeat
		["@keyword.return"] = { fg = colors.blue }, -- @keyword
		["@keyword.storage"] = { fg = colors.blue }, -- StorageClass
		["@label"] = { fg = colors.blue }, -- For labels
		["@markup"] = {}, -- @none
		["@markup.emphasis"] = { italic = true },
		["@markup.environment"] = { fg = colors.orange }, -- Macro
		["@markup.environment.name"] = { fg = colors.green }, -- Type
		["@markup.heading"] = { fg = colors.orange, bold = true }, -- Title
		["@markup.italic"] = { italic = true },
		["@markup.link"] = { fg = colors.aqua },
		["@markup.link.label"] = { fg = colors.blue }, -- SpecialChar
		["@markup.link.label.symbol"] = { fg = colors.pink }, -- Identifier
		["@markup.link.url"] = { underline = true },
		["@markup.list"] = { fg = colors.purple }, -- For special punctuation
		["@markup.list.checked"] = { fg = colors.green }, -- For brackets and parens
		["@markup.list.markdown"] = { fg = colors.orange, bold = true },
		["@markup.list.unchecked"] = { fg = colors.blue }, -- For brackets and parens
		["@markup.math"] = { fg = colors.blue }, -- Special
		["@markup.raw"] = { fg = colors.purple }, -- String
		["@markup.raw.markdown_inline"] = { bg = colors.black_berry, fg = colors.blue },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.strong"] = { bold = true },
		["@markup.underline"] = { underline = true },
		["@module"] = { fg = colors.orange }, -- Include
		["@module.builtin"] = { fg = colors.pink }, -- Variable names that are defined by the languages
		["@namespace.builtin"] = { fg = colors.pink }, -- @variable.builtin
		["@none"] = {},
		["@number"] = { fg = colors.pink }, -- Number
		["@number.float"] = { fg = colors.pink }, -- Float
		["@operator"] = { fg = colors.blue }, -- For any operator
		["@property"] = { fg = colors.pink }, -- For fields
		["@punctuation.bracket"] = { fg = colors.yellow }, -- For brackets and parens
		["@punctuation.delimiter"] = { fg = colors.blue }, -- For delimiters ie: `.`
		["@punctuation.special"] = { fg = colors.blue }, -- For special symbols
		["@punctuation.special.markdown"] = { fg = colors.orange }, -- For special symbols in markdown
		["@string"] = { fg = colors.purple }, -- String
		["@string.documentation"] = { fg = colors.yellow },
		["@string.escape"] = { fg = colors.blue }, -- For escape characters within a string
		["@string.regexp"] = { fg = colors.blue }, -- For regexes
		["@tag"] = { fg = colors.green }, -- Label
		["@tag.attribute"] = { fg = colors.pink }, -- @property
		["@tag.delimiter"] = { fg = colors.yellow }, -- Delimiter
		["@tag.delimiter.tsx"] = { fg = colors.blue },
		["@tag.tsx"] = { fg = colors.red },
		["@tag.javascript"] = { fg = colors.red },
		["@type"] = { fg = colors.green }, -- Type
		["@type.builtin"] = { fg = colors.green }, -- Built-in types
		["@type.definition"] = { fg = colors.green }, -- Typedef
		["@type.qualifier"] = { fg = colors.blue }, -- @keyword
		["@variable"] = { fg = colors.pink }, -- Any variable name that does not have another highlight
		["@variable.builtin"] = { fg = colors.pink }, -- Variable names that are defined by the languages
		["@variable.member"] = { fg = colors.pink }, -- For fields
		["@variable.parameter"] = { fg = colors.yellow }, -- For parameters of a function
		["@variable.parameter.builtin"] = { fg = colors.yellow }, -- For builtin parameters of a function
	}

	local snacks_highlights = {
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

	for group, properties in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, properties)
	end

	for group, properties in pairs(treesitter_highlights) do
		vim.api.nvim_set_hl(0, group, properties)
	end

	for group, properties in pairs(snacks_highlights) do
		vim.api.nvim_set_hl(0, group, properties)
	end
end

return M

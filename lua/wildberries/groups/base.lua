local colors = require("wildberries.colors")

return {
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

local colors = require("wildberries.colors")

return {
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

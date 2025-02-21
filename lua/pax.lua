-- Design tokens - these are the colours we use to define the semantic tokens.
-- If required, these can also be used directly in the hl groups.
local color = {
	hibiscus = "#ff007b",
	red = "#e61919",
	orange = "#e68019",
	green = "#14b814",
	black = "#000000",
	grey10 = "#1a1a1a",
	grey20 = "#333333",
	grey30 = "#4d4d4d",
	grey40 = "#666666",
	grey50 = "#808080",
	grey60 = "#999999",
	grey70 = "#b3b3b3",
	grey80 = "#cccccc",
	grey90 = "#e6e6e6",
	white = "#ffffff",
}

-- Semantic tokens - these are what we should use in the hl groups. Using these
-- tokens over the design tokens makes theme toggling easier.
local dark = {
	bg = color.grey10,
	bg_plus = color.grey20,
	bg_plus_plus = color.grey30,
	mg_minus = color.grey40,
	mg = color.grey50,
	mg_plus = color.grey60,
	fg_minus_minus = color.grey70,
	fg_minus = color.grey80,
	fg = color.grey90,
	cursor_bg = color.hibiscus,
	error = color.red,
	warning = color.orange,
	success = color.green,
}
local light = {
	bg = color.white,
	bg_plus = color.grey90,
	bg_plus_plus = color.grey80,
	mg_minus = color.grey50,
	mg = color.grey40,
	mg_plus = color.grey30,
	fg_minus_minus = color.grey20,
	fg_minus = color.grey10,
	fg = color.black,
	cursor_bg = color.hibiscus,
	error = color.red,
	warning = color.orange,
	success = color.green,
}

-- Given a theme, use the semantic tokens to generate and return a table.
-- Each key is the name of a hl group, each value is the hl group attributes.
local function get_highlight_groups(theme)
	-- To find inbuilt hl-groups, try using `:help <item>` from the following:
	-- * group-name
	-- * highlight-groups
	-- * diagnostic-highlights
	-- * lsp-highlight
	-- * lsp-semantic-highlight
	-- Alternatiely, look at plugin documentation for plugin specific groups.
	-- * eg treesitter-highlight-groups

	-- To find treesitter tokens try using `:Inspect`
	return {
		-- NEOVIM
		ColorColumn = { bg = theme.bg_plus },
		Conceal = { fg = theme.bg, bg = theme.bg },
		CurSearch = { fg = theme.fg, bg = theme.bg, reverse = true },
		Cursor = { fg = theme.fg, bg = theme.cursor_bg },
		CursorLine = { bg = theme.bg_plus },
		CursorLineNr = { fg = theme.fg, bg = theme.bg_plus },
		Directory = { fg = theme.fg },
		ErrorMsg = { fg = theme.error },
		FloatBorder = { fg = theme.fg },
		IncSearch = { fg = theme.fg, bg = theme.bg, reverse = true },
		LineNr = { fg = theme.mg },
		MatchParen = { fg = theme.fg, bg = theme.bg, reverse = true },
		ModeArea = { fg = theme.fg, bg = theme.bg_plus_plus },
		Normal = { fg = theme.fg, bg = theme.bg },
		Pmenu = { fg = theme.fg_minus, bg = theme.bg_plus },
		PmenuSbar = { bg = theme.bg_plus },
		PmenuSel = { fg = theme.fg_minus, bg = theme.bg_plus, reverse = true },
		PmenuThumb = { bg = theme.fg_minus },
		SignColumn = {}, -- deliberately blank
		TermCursor = { bg = theme.cursor_bg },
		Title = { fg = theme.fg },
		Visual = { fg = theme.bg_plus_plus, bg = theme.fg_minus_minus },
		WarningMsg = { fg = theme.warning },
		WinBar = { fg = theme.cursor_bg, bg = theme.bg },
		WinSeparator = { fg = theme.bg_plus_plus, bg = theme.bg },
		-- NEOVIM LINKED
		CursorColumn = { link = "CursorLine" },
		CursorIM = { link = "Cursor" },
		CursorLineFold = { link = "CursorLine" },
		CursorLineSign = { link = "CursorLine" },
		FloatTitle = { link = "Normal" },
		LineNrAbove = { link = "LineNr" },
		LineNrBelow = { link = "LineNr" },
		ModeMsg = { link = "ModeArea" },
		MoreMsg = { link = "ModeArea" },
		MsgArea = { link = "ModeArea" },
		MsgSeparator = { link = "ModeMsg" },
		NormalFloat = { link = "Normal" },
		NormalNC = { link = "Normal" },
		PmenuExtra = { link = "Pmenu" },
		PmenuExtraSel = { link = "PmenuSel" },
		PmenuKind = { link = "Pmenu" },
		PmenuKindSel = { link = "PmenuSel" },
		Question = { link = "ModeMsg" },
		QuickFixLine = { link = "PmenuSel" },
		Search = { link = "IncSearch" },
		SpecialKey = { link = "Normal" },
		SpellBad = { link = "Normal" },
		SpellCap = { link = "Normal" },
		SpellLocal = { link = "Normal" },
		SpellRare = { link = "Normal" },
		StatusLine = { link = "Conceal" },
		StatusLineNC = { link = "Conceal" },
		Substitute = { link = "CurSearch" },
		VisualNOS = { link = "Visual" },
		Whitespace = { link = "Normal" },
		WildMenu = { link = "PmenuSel" },
		WinBarNC = { link = "WinSeparator" },
		lCursor = { link = "Cursor" },
		-- NETRW
		netrwMarkFile = { link = "PmenuSel" },
		-- DIAGNOSTIC
		DiagnosticError = { fg = theme.error },
		DiagnosticUnderlineError = { fg = theme.error, underline = true },
		DiagnosticWarn = { fg = theme.warning },
		DiagnosticUnderlineWarn = { fg = theme.warning, underline = true },
		DiagnosticHint = { fg = theme.mg },
		DiagnosticInfo = { fg = theme.mg },
		DiagnosticOk = { fg = theme.mg },
		DiagnosticUnnecessary = { italic = true, underline = true },
		-- SYNTAX
		Comment = { fg = theme.mg, italic = true },
		Constant = { fg = theme.fg },
		Delimiter = { fg = theme.fg },
		Function = { fg = theme.fg_minus_minus },
		Identifier = { fg = theme.fg },
		PreProc = { fg = theme.fg, bold = true },
		Special = { fg = theme.fg },
		Statement = { fg = theme.fg, bold = true },
		String = { fg = theme.fg },
		Type = { fg = theme.fg_minus },
		Underlined = { underline = true },
		Todo = { fg = theme.bg, bg = theme.fg },
		Ignore = { link = "Normal" },
		Error = { link = "Normal" },
		-- LSP
		LspCodeLens = { link = "Normal" },
		LspCodeLensSeparator = { link = "Normal" },
		LspReferenceRead = { link = "Normal" },
		LspReferenceText = { link = "Normal" },
		LspReferenceWrite = { link = "Normal" },
		LspSignatureActiveParameter = { link = "IncSearch" },
		-- TREESITTER/SYNTAX
		["@lsp.type.comment"] = {}, -- required to prevent below being overridden
		["@comment.error"] = { link = "Todo" },
		["@comment.todo"] = { link = "Todo" },
		["@comment.warning"] = { link = "Todo" },
		["@comment.note"] = { link = "Todo" },
		["@variable"] = { link = "Identifier" },
		-- TREESITTER/JSX
		["@boolean.javascript"] = { fg = theme.fg_minus, bold = true },
		["@constant.builtin.javascript"] = { fg = theme.fg_minus, bold = true },
		["@constructor.javascript"] = { link = "Function" },
		["@function.builtin.javascript"] = { link = "Statement" },
		["@none.javascript"] = { link = "Constant" },
		["@tag.attribute.javascript"] = { fg = theme.fg_minus, italic = true },
		["@tag.builtin.javascript"] = { fg = theme.fg_minus, italic = true },
		["@tag.delimiter.javascript"] = { fg = theme.fg, bold = true },
		["@tag.javascript"] = { fg = theme.fg_minus, italic = true },
		-- TREESITTER/TS
		["@boolean.typescript"] = { fg = theme.fg_minus, bold = true },
		["@constant.builtin.typescript"] = { fg = theme.fg_minus, bold = true },
		["@constructor.typescript"] = { link = "Function" },
		-- TREESITTER/TSX
		["@boolean.tsx"] = { fg = theme.fg_minus, bold = true },
		["@constant.builtin.tsx"] = { fg = theme.fg_minus, bold = true },
		["@constructor.tsx"] = { link = "Function" },
		["@none.tsx"] = { link = "Constant" },
		["@tag.attribute.tsx"] = { fg = theme.fg_minus, italic = true },
		["@tag.builtin.tsx"] = { fg = theme.fg_minus, italic = true },
		["@tag.delimiter.tsx"] = { fg = theme.fg, bold = true },
		["@tag.tsx"] = { fg = theme.fg_minus, italic = true },
		-- TREESITTER/LUA
		["@boolean.lua"] = { fg = theme.fg_minus, bold = true },
		["@constructor.lua"] = { link = "Delimiter" },
		-- PLUGIN/FZF
		FzfLuaHeaderBind = { fg = theme.fg },
		FzfLuaHeaderText = { link = "FzfLuaHeaderBind" },
		FzfLuaPathColNr = { link = "LineNr" },
		FzfLuaPathLineNr = { link = "LineNr" },
		FzfLuaBufNr = { link = "LineNr" },
		FzfLuaBufFlagCur = { link = "LineNr" },
		FzfLuaBufFlagAlt = { link = "LineNr" },
		-- CUSTOM
		-- nb the below highlight groups make use of the design tokens directly.
		-- This is because the readability of the white text on the error/warning
		-- background is much better in both light and dark modes.
		ErrorMsgReverse = { fg = color.white, bg = theme.error },
		WarningMsgReverse = { fg = color.white, bg = theme.error },
	}
end

local function setup()
	vim.cmd("highlight clear")
	vim.cmd("set t_Co=256")
	vim.g.colors_name = "pax" -- _must_ come after clearing highlights

	local background = vim.api.nvim_get_option("background")
	local theme = background == "dark" and dark or light
	local highlight_groups = get_highlight_groups(theme)

	for group, attrs in pairs(highlight_groups) do
		vim.api.nvim_set_hl(0, group, attrs)
	end
end

return { setup = setup }

local M = {}

-- Color palette inspired by Alto's Odyssey

M.colors = require('odyssey.odyssey')

function M.setup(mode)
  -- Clear previous highlighting
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "odyssey"

  -- Set terminal colors
  vim.g.terminal_color_0 = M.colors.bg_dark
  vim.g.terminal_color_1 = M.colors.red
  vim.g.terminal_color_2 = M.colors.green
  vim.g.terminal_color_3 = M.colors.yellow
  vim.g.terminal_color_4 = M.colors.blue
  vim.g.terminal_color_5 = M.colors.purple
  vim.g.terminal_color_6 = M.colors.cyan
  vim.g.terminal_color_7 = M.colors.fg
  vim.g.terminal_color_8 = M.colors.gray
  vim.g.terminal_color_9 = M.colors.red
  vim.g.terminal_color_10 = M.colors.green
  vim.g.terminal_color_11 = M.colors.yellow
  vim.g.terminal_color_12 = M.colors.blue_light
  vim.g.terminal_color_13 = M.colors.purple_light
  vim.g.terminal_color_14 = M.colors.cyan
  vim.g.terminal_color_15 = M.colors.fg

  -- Define highlight groups
  local highlights = {
    -- UI elements
    Normal = { fg = M.colors.fg, bg = M.colors.bg_main },
    NormalFloat = { fg = M.colors.fg, bg = M.colors.bg_dark },
    NormalNC = { fg = M.colors.fg, bg = M.colors.bg_dark },

    Cursor = { bg = M.colors.sand_light },
    CursorLine = { bg = M.colors.line_highlight },
    CursorLineNr = { fg = M.colors.sand_light, bold = true },

    LineNr = { fg = M.colors.dark_gray },
    SignColumn = { bg = M.colors.bg_main },
    ColorColumn = { bg = M.colors.bg_light },

    StatusLine = { fg = M.colors.fg, bg = M.colors.bg_light },
    StatusLineNC = { fg = M.colors.gray, bg = M.colors.bg_dark },
    VertSplit = { fg = M.colors.bg_dark , bg = M.colors.bg_dark },

    TabLine = { fg = M.colors.gray, bg = M.colors.bg_dark },
    TabLineFill = { bg = M.colors.bg_dark },
    TabLineSel = { fg = M.colors.fg, bg = M.colors.bg_light, bold = true },

    Title = { fg = M.colors.sand_light, bold = true },
    Visual = { bg = M.colors.selection },
    Search = { fg = M.colors.bg_dark, bg = M.colors.yellow },
    IncSearch = { fg = M.colors.bg_dark, bg = M.colors.orange },

    Pmenu = { fg = M.colors.fg, bg = M.colors.bg_dark },
    PmenuSel = { fg = M.colors.bg_dark, bg = M.colors.sand },
    PmenuSbar = { bg = M.colors.bg_light },
    PmenuThumb = { bg = M.colors.gray },

    Folded = { fg = M.colors.gray, bg = M.colors.bg_dark },
    FoldColumn = { fg = M.colors.gray, bg = M.colors.bg_main },

    NonText = { fg = M.colors.dark_gray },
    SpecialKey = { fg = M.colors.dark_gray },

    Directory = { fg = M.colors.blue_light },

    -- Syntax highlighting
    Comment = { fg = M.colors.comment, italic = true },

    Constant = { fg = M.colors.orange },
    String = { fg = M.colors.green },
    Character = { fg = M.colors.green },
    Number = { fg = M.colors.orange },
    Boolean = { fg = M.colors.orange },
    Float = { fg = M.colors.orange },

    Identifier = { fg = M.colors.sand },
    Function = { fg = M.colors.blue_light },

    Statement = { fg = M.colors.purple_light },
    Conditional = { fg = M.colors.purple_light },
    Repeat = { fg = M.colors.purple_light },
    Label = { fg = M.colors.purple_light },
    Operator = { fg = M.colors.sand_light },
    Keyword = { fg = M.colors.purple },
    Exception = { fg = M.colors.red },

    PreProc = { fg = M.colors.red },
    Include = { fg = M.colors.purple },
    Define = { fg = M.colors.purple },
    Macro = { fg = M.colors.purple },
    PreCondit = { fg = M.colors.purple },

    Type = { fg = M.colors.yellow },
    StorageClass = { fg = M.colors.yellow },
    Structure = { fg = M.colors.yellow },
    Typedef = { fg = M.colors.yellow },

    Special = { fg = M.colors.cyan },
    SpecialChar = { fg = M.colors.sand_dark },
    Tag = { fg = M.colors.cyan },
    Delimiter = { fg = M.colors.fg },
    SpecialComment = { fg = M.colors.comment, italic = true },
    Debug = { fg = M.colors.red },

    Underlined = { fg = M.colors.blue, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = M.colors.error },
    Todo = { fg = M.colors.bg_dark, bg = M.colors.yellow, bold = true },

    -- Diff
    DiffAdd = { fg = M.colors.green, bg = M.colors.bg_dark },
    DiffChange = { fg = M.colors.blue, bg = M.colors.bg_dark },
    DiffDelete = { fg = M.colors.red, bg = M.colors.bg_dark },
    DiffText = { fg = M.colors.yellow, bg = M.colors.bg_dark },

    -- Diagnostics
    DiagnosticError = { fg = M.colors.error },
    DiagnosticWarn = { fg = M.colors.warning },
    DiagnosticInfo = { fg = M.colors.info },
    DiagnosticHint = { fg = M.colors.hint },

    -- Treesitter
    ["@attribute"] = { fg = M.colors.purple_light },
    ["@boolean"] = { fg = M.colors.orange },
    ["@character"] = { fg = M.colors.green },
    ["@comment"] = { link = "Comment" },
    ["@conditional"] = { link = "Conditional" },
    ["@constant"] = { fg = M.colors.orange, bold = true },
    ["@constant.builtin"] = { fg = M.colors.orange, italic = true },
    ["@constant.macro"] = { fg = M.colors.orange },
    ["@constructor"] = { fg = M.colors.yellow },
    ["@error"] = { link = "Error" },
    ["@exception"] = { link = "Exception" },
    ["@field"] = { fg = M.colors.cyan },
    ["@float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = M.colors.blue_light, italic = true },
    ["@function.macro"] = { fg = M.colors.blue },
    ["@include"] = { link = "Include" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { fg = M.colors.purple, italic = true },
    ["@keyword.operator"] = { fg = M.colors.purple_light },
    ["@label"] = { link = "Label" },
    ["@method"] = { fg = M.colors.blue_light },
    ["@namespace"] = { fg = M.colors.yellow },
    ["@number"] = { link = "Number" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { fg = M.colors.sand_dark },
    ["@parameter.reference"] = { fg = M.colors.sand_dark },
    ["@property"] = { fg = M.colors.sand },
    ["@punctuation.bracket"] = { fg = M.colors.fg },
    ["@punctuation.delimiter"] = { fg = M.colors.fg },
    ["@punctuation.special"] = { fg = M.colors.sand_dark },
    ["@repeat"] = { link = "Repeat" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = M.colors.cyan },
    ["@string.regex"] = { fg = M.colors.red },
    ["@string.special"] = { fg = M.colors.red },
    ["@symbol"] = { fg = M.colors.cyan },
    ["@tag"] = { fg = M.colors.red },
    ["@tag.attribute"] = { fg = M.colors.yellow },
    ["@tag.delimiter"] = { fg = M.colors.sand_dark },
    ["@text"] = { fg = M.colors.fg },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { fg = M.colors.yellow, bold = true },
    ["@text.literal"] = { fg = M.colors.green },
    ["@text.uri"] = { fg = M.colors.blue, underline = true },
    ["@text.todo"] = { link = "Todo" },
    ["@text.note"] = { fg = M.colors.info, bg = M.colors.bg_dark },
    ["@text.warning"] = { fg = M.colors.warning, bg = M.colors.bg_dark },
    ["@text.danger"] = { fg = M.colors.error, bg = M.colors.bg_dark },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = M.colors.yellow, italic = true },
    ["@variable"] = { fg = M.colors.fg },
    ["@variable.builtin"] = { fg = M.colors.sand_dark, italic = true },

    -- LSP semantic tokens
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.interface"] = { fg = M.colors.yellow },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },

    -- Git
    GitSignsAdd = { fg = M.colors.green },
    GitSignsChange = { fg = M.colors.yellow },
    GitSignsDelete = { fg = M.colors.red },

    -- Telescope
    TelescopeNormal = { fg = M.colors.fg, bg = M.colors.bg_main },
    TelescopeBorder = { fg = M.colors.dark_gray, bg = M.colors.bg_main },
    TelescopePromptBorder = { fg = M.colors.dark_gray, bg = M.colors.bg_main },
    TelescopeResultsBorder = { fg = M.colors.dark_gray, bg = M.colors.bg_main },
    TelescopePreviewBorder = { fg = M.colors.dark_gray, bg = M.colors.bg_main },
    TelescopeSelection = { fg = M.colors.fg, bg = M.colors.selection },
    TelescopeMultiSelection = { fg = M.colors.yellow, bg = M.colors.selection },
    TelescopeMatching = { fg = M.colors.sand, bold = true },

    -- NvimTree
    NvimTreeNormal = { fg = M.colors.fg, bg = M.colors.bg_main},
    NvimTreeVertSplit = { fg = M.colors.bg_dark , bg = M.colors.bg_main },
    NvimTreeVertWinSeperator = { fg = M.colors.bg_main },
    NvimTreeRootFolder = { fg = M.colors.blue, bold = true },
    NvimTreeFolderName = { fg = M.colors.blue },
    NvimTreeFolderIcon = { fg = M.colors.blue },
    NvimTreeEmptyFolderName = { fg = M.colors.gray },
    NvimTreeOpenedFolderName = { fg = M.colors.blue_light },
    NvimTreeIndentMarker = { fg = M.colors.dark_gray },
    NvimTreeGitDirty = { fg = M.colors.yellow },
    NvimTreeGitNew = { fg = M.colors.green },
    NvimTreeGitDeleted = { fg = M.colors.red },
    NvimTreeSpecialFile = { fg = M.colors.purple, underline = true },
    NvimTreeExecFile = { fg = M.colors.green, bold = true },

    -- WhichKey
    WhichKey = { fg = M.colors.purple_light },
    WhichKeyGroup = { fg = M.colors.blue },
    WhichKeyDesc = { fg = M.colors.sand },
    WhichKeySeperator = { fg = M.colors.comment },
    WhichKeySeparator = { fg = M.colors.comment },
    WhichKeyFloat = { bg = M.colors.bg_dark },
    WhichKeyValue = { fg = M.colors.gray },

    -- Indent Blankline
    IndentBlanklineChar = { fg = M.colors.dark_gray },
    IndentBlanklineContextChar = { fg = M.colors.gray },
  }

  -- Apply highlights
  for group, styles in pairs(highlights) do
    M.highlight(group, styles)
  end
end

-- Helper function to set highlights
function M.highlight(group, styles)
  local style = styles.style or "NONE"
  local fg = styles.fg or "NONE"
  local bg = styles.bg or "NONE"
  local sp = styles.sp or "NONE"

  if styles.link then
    vim.cmd(string.format("highlight! link %s %s", group, styles.link))
  else
    if styles.italic then style = style .. ",italic" end
    if styles.bold then style = style .. ",bold" end
    if styles.underline then style = style .. ",underline" end
    if styles.undercurl then style = style .. ",undercurl" end
    if styles.strikethrough then style = style .. ",strikethrough" end
    if styles.reverse then style = style .. ",reverse" end

    -- Remove leading commas
    if style:sub(1,1) == "," then
      style = style:sub(2)
    end

    local cmd = string.format(
      "highlight %s guifg=%s guibg=%s guisp=%s gui=%s",
      group, fg, bg, sp, style
    )
    vim.cmd(cmd)
  end
end

return M

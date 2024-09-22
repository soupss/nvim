require("symbols-outline").setup({
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = true,
    width = 25,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    autofold_depth = nil,
    auto_unfold_hover = true,
    fold_markers = { '>', 'v' },
    wrap = false,
    keymaps = { -- These keymaps can be a string or a table for multiple keys
    close = {"<Esc>", "q"},
    goto_location = "<Cr>",
    focus_location = "o",
    toggle_preview = "p",
    fold = "h",
    unfold = "l",
    fold_all = "H",
    unfold_all = "L",
    fold_reset = "R",
},
symbols = {
    File = { icon = "File", hl = "@text.uri" },
    Module = { icon = "Module", hl = "@namespace" },
    Namespace = { icon = "Namespace", hl = "@namespace" },
    Package = { icon = "Package", hl = "@namespace" },
    Class = { icon = "Class", hl = "@type" },
    Method = { icon = "Method", hl = "@method" },
    Property = { icon = "Property", hl = "@method" },
    Field = { icon = "Field", hl = "@field" },
    Constructor = { icon = "Constructor", hl = "@constructor" },
    Enum = { icon = "Enum", hl = "@type" },
    Interface = { icon = "Interface", hl = "@type" },
    Function = { icon = "Function", hl = "@function" },
    Variable = { icon = "Variable", hl = "@constant" },
    Constant = { icon = "Constant", hl = "@constant" },
    String = { icon = "String", hl = "@string" },
    Number = { icon = "Number", hl = "@number" },
    Boolean = { icon = "Boolean", hl = "@boolean" },
    Array = { icon = "Array", hl = "@constant" },
    Object = { icon = "Object", hl = "@type" },
    Key = { icon = "Key", hl = "@type" },
    Null = { icon = "Null", hl = "@type" },
    EnumMember = { icon = "EnumMember", hl = "@field" },
    Struct = { icon = "Struct", hl = "@type" },
    Event = { icon = "Event", hl = "@type" },
    Operator = { icon = "Operator", hl = "@operator" },
    TypeParameter = { icon = "TypeParameter", hl = "@parameter" },
    Component = { icon = "Component", hl = "@function" },
    Fragment = { icon = "Fragment", hl = "@constant" },
},
})

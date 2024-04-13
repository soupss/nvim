vim.api.nvim_set_hl(0, "TelescopeSelection", {link = "GruvboxPurpleBold"})
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", {link = "GruvboxGreenBold"})
vim.api.nvim_set_hl(0, "TelescopeMatching", {link = "GruvboxGreenBold"})
vim.api.nvim_set_hl(0, "TelescopeBorder", {link = "GruvboxGreenBold"})

local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        layout_strategy = "vertical",
        border = true,
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        prompt_prefix = " ",
        selection_caret = " ->",
        entry_prefix = "   ",
        results_title = false,
        dynamic_preview_title = true,
        hls_result_eol = false,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            }
        }
    }
}

-- disable cursorline in telescope windows
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'TelescopePrompt',
    callback = function()
        vim.wo.cursorline = false
    end,
})

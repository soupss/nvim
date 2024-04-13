vim.api.nvim_set_hl(0, "IlluminatedWordRead", {bold = true, underline = true})
vim.api.nvim_set_hl(0, "IlluminatedWordText", {bold = true, underline = true})
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", {bold = true, underline = true})

--- auto update the highlight style on colorscheme change
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
    pattern = { "*" },
    callback = function(ev)
        vim.api.nvim_set_hl(0, "IlluminatedWordText", {bold = true, underline = true})
        vim.api.nvim_set_hl(0, "IlluminatedWordRead", {bold = true, underline = true})
        vim.api.nvim_set_hl(0, "IlluminatedWordWrite", {bold = true, underline = true})
    end
})

require('illuminate').configure({
    delay = 0,
    under_cursor = false
})

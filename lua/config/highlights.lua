vim.o.background = "dark"
vim.g.gruvbox_contrast_dark = "soft"
vim.cmd([[colorscheme gruvbox]])

vim.api.nvim_set_hl(0, "StatusLine", {link = "GruvboxGreen"})
vim.api.nvim_set_hl(0, "StatusLineNC", {link = "GruvboxBg3"})
vim.api.nvim_set_hl(0, 'User1', { link = "GruvboxRed" }) -- used in statusline
vim.api.nvim_set_hl(0, 'MatchParen', {fg = "#b8bb26", underline = true, bold = true})
vim.api.nvim_set_hl(0, 'SignColumn', {fg = none, bg = none})
vim.api.nvim_set_hl(0, 'Normal', {bg = "#262626"})
vim.api.nvim_set_hl(0, 'DiagnosticSignError', {link = "GruvboxRed"})
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', {link = "GruvboxYellow"})

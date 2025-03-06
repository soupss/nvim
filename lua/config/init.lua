require("config.lazy") -- package manager
require("config.set") -- basic vim settings
vim.g.mapleader = ' '
require("lazy").setup("config.plugins") -- plugins
require("config.keymap") -- keybinds
require("config.highlights") -- color settings
require("config.statusline") -- statusline
require("config.lsp") -- lsp

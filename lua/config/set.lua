vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.o.laststatus = 2
vim.o.mouse = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.signcolumn = "yes"

vim.opt.list = true
vim.opt.listchars = "tab:  ,extends:…,precedes:…,nbsp:~,trail:~"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 2

vim.opt.matchpairs:append("<:>")
vim.opt.formatoptions = ("qjlc") -- disable auto comments

-- disable cursorline on inactive panes
vim.api.nvim_create_autocmd({'WinEnter', 'BufWinEnter'}, {
    group = cursorline_group,
    pattern = '*',
    callback = function()
        if vim.bo.filetype ~= 'TelescopePrompt' then
            vim.wo.cursorline = true
        end
    end,
})

vim.api.nvim_create_autocmd('WinLeave', {
    group = cursorline_group,
    pattern = '*',
    command = 'setlocal nocursorline',
})

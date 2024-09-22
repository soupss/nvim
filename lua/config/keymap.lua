vim.g.mapleader = ' '
-- Netrw
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '-', ':Oil<CR>', {silent = true, noremap = true})
-- Center screen
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- Move between panes
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')
-- Resize panes
vim.keymap.set('n', '<Up>', '<C-w>+')
vim.keymap.set('n', '<Down>', '<C-w>-')
vim.keymap.set('n', '<Left>', '<C-w><')
vim.keymap.set('n', '<Right>', '<C-w>>')
local d = 15
vim.keymap.set('n', '<S-Up>', '<C-w>' .. d .. '+')
vim.keymap.set('n', '<S-Down>', '<C-w>' .. d .. '-')
vim.keymap.set('n', '<S-Left>', '<C-w>' .. d .. '<')
vim.keymap.set('n', '<S-Right>', '<C-w>' .. d .. '>')
-- delete without saving to register
vim.keymap.set('n', 's', '"_d', {silent = true})
vim.keymap.set('n', 'S', '"_d$', {silent = true})
vim.keymap.set('n', 'ss', '"_dd', {silent = true})
vim.keymap.set('n', '<leader>h', ':set hlsearch! hlsearch?<cr>') -- toggle hl search
vim.keymap.set('n', '<leader>w', ':set wrap! wrap?<cr>') -- toggle wrap
vim.keymap.set('n', '<bs>', '<c-^>') -- last file
vim.keymap.set('n', '<leader>y', ':%y*<cr>') -- copy file to clipboard
-- move text in visual mode
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z') -- dont jump on J
-- */# in visual mode
vim.keymap.set('v', '*', 'y/<c-r>"<cr>')
vim.keymap.set('v', '#', 'y?<c-r>"<cr>')
-- add numbered j/k to jumplist
vim.keymap.set('n', 'j', [[(v:count >= 3 ? "m'" . v:count : '') . 'j']], { noremap = true, expr = true })
vim.keymap.set('n', 'k', [[(v:count >= 3 ? "m'" . v:count : '') . 'k']], { noremap = true, expr = true })
vim.api.nvim_set_keymap('n', '<C-b>', '<C-a>', {noremap = true, silent = true}) -- tmux prefix is ctrl+a
vim.api.nvim_set_keymap('v', 'g<C-b>', 'g<C-a>', {noremap = true, silent = true}) -- tmux prefix is ctrl+a
vim.api.nvim_set_keymap('n', '<leader>p', ':set paste! paste?<CR>', {noremap = true}) -- toggle paste
vim.api.nvim_set_keymap('n', '<C-b>', '<C-a>', {noremap = true, silent = true})
-- telescope binds
vim.keymap.set('n', '<leader>o', ':Telescope find_files<cr>')
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>b', ':Telescope buffers<cr>')
-- undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
-- symbols outline
vim.keymap.set('n', '<leader>v', vim.cmd.SymbolsOutline)
-- lsp binds after lsp attaches
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {clear = true}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gtd', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<leader>s', vim.lsp.buf.document_symbol, opts)
        vim.keymap.set('n', '<leader>S', vim.lsp.buf.workspace_symbol, opts)
    end,
})
-- compile commands
vim.api.nvim_create_autocmd('FileType', {
    group = vim.api.nvim_create_augroup('LaTeX', {clear = true}),
    pattern = 'tex',
    callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', '<f5>', ':!pdflatex %<cr>', {noremap = true})
    end,
})

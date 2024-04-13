local statusline = {
' %1*%M%*%t%<',
'%=',
'%0.P        ',
'%l:%c/%L ',
}

vim.o.statusline = table.concat(statusline, '')

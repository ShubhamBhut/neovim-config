vim.g.mapleader = " "
vim.o.relativenumber = true

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })
vim.keymap.set({'n', 't'}, '<leader>e' ,'<C-w><C-w>', { noremap = true })
map('n', '<leader>t', ':NvimTreeToggle')
--map('n', '<leader>t', ':belowright split term://bash')
map('n', '<C-r>', ':resize10')
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
require('packer-plugins')

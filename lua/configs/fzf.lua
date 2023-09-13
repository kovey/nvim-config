local M = {}
function M.config()
    local keyset = vim.keymap
    keyset.set('n', '<leader>f', ':Files<CR>')
    keyset.set('n', '<leader>b', ':Buffers<CR>')
    keyset.set('n', '<leader>ag', ':Ag <C-R><C-W><CR>', {silent = true})
end
return M

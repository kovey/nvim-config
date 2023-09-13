local M = {}
function M.config()
    local keyset = vim.keymap
    keyset.set('n', 'ss', '<Plug>(easymotion-s2)')
end

return M

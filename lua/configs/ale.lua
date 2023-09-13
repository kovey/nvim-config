local M = {}
function M.config ()
    vim.g.ale_set_highlights = 1
    vim.g.ale_set_quickfix = 1
    vim.g.ale_sign_error = '✗'
    vim.g.ale_sign_warning = '⚡'
    vim.g.ale_statusline_format = {'✗ %d', '⚡ %d', '✔ OK'}
    vim.g.ale_echo_msg_error_str = "E"
    vim.g.ale_echo_msg_warning_str = "W"
    vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
    vim.g.ale_lint_on_enter = 0
    vim.g.ale_disable_lsp = 1
    vim.g.ale_completion_enabled = 0
    vim.g.ale_completion_autoimport = 0
    vim.g.ale_fix_on_save = 0
    vim.g.ale_lint_on_insert_leave = 0
    vim.g.ale_lint_on_text_changed = 0
    vim.g.ale_lint_on_save = 0
    -- vim.g.ale_linters = {go = {'golangci-lint', 'go vet', 'go fmt'}, rust = {'cargo'}, python = {'flake8', 'pylint'}}
    -- vim.g.ale_linters.php = {}
    local keyset = vim.keymap
    keyset.set('n', 'sp', 'Plug>(ale_previous_wrap)')
    keyset.set('n', 'sn', '<Plug>(ale_next_wrap)')
    keyset.set('n', '<Leader>d', ':ALEDetail<CR>')
end
return M

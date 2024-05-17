-- aleph is a stripped down version of goolord/alpha-nvim to improve startup time
local M = {}
function M.config()
	local dh = require("dashboard")
    dh.setup({
        theme = 'hyper',
        config = {
            week_header = {
                enable = true,
            },
            shortcut = {
                {desc = '󰊳 File brower', group = '@property', action = 'NvimTreeToggle', key = 'o'},
                {
                    icon = ' ',
                    icon_hl = '@variable',
                    desc = 'Files',
                    group = 'Label',
                    action = 'Files',
                    key = 'f',
                },
                {
                    icon = ' ',
                    desc = 'Search Word',
                    group = 'DiagnosticHint',
                    action = 'Rg',
                    key = 's',
                },
                {
                    desc = ' dotfiles',
                    group = 'Number',
                    action = 'Rg',
                    key = 'd',
                },
            },
            packages = { enable = true },
            project = { enable = true, limit = 8, icon = ' ', label = 'Recently projects', action = 'Telescope find_files cwd=' },
            mru = {limit = 10, icon = ' ', label = 'Recently files', action = 'Telescope oldfiles'},
            footer = {'', '', '', '', '', 'config by kovey IDE with neovim'}
        },
    })
end

return M

-- aleph is a stripped down version of goolord/alpha-nvim to improve startup time
local M = {}
function M.config()
	local dh = require("dashboard")
    dh.custom_header = {
        ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
        ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
        ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
        ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
        ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
        ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
    }
    dh.custom_center = {
        {icon = '  ', desc = 'Recently opened files                    ', shortcut = '', action = 'Telescope oldfiles'},
        {icon = '  ', desc = 'Find File                               ', shortcut = '', action = 'Telescope find_files'},
        {icon = '  ', desc = 'File Browser                             ', shortcut = '', action = 'NvimTreeToggle'},
        {icon = '  ', desc = 'Find Word                               ', shortcut = '', action = 'Telescope live_grep'},
        {icon = '  ', desc = 'Find String                             ', shortcut = '', action = 'Telescope grep_string'},
        {icon = "  ", desc = 'Edit Config                              ', shortcut = '', action = "edit $MYVIMRC"}
    }

    dh.custom_footer = function()
        local footer = {'config by kovey', 'IDE with neovim'}
        print(footer)
        return footer
    end
end

return M

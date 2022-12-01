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
        {icon = '  ', desc = 'Recently opened files                    ', shortcut = 'n h', action = 'Telescope oldfiles'},
        {icon = '  ', desc = 'Find  File                               ', shortcut = 'n f', action = 'Telescope find_files'},
        {icon = '  ', desc = 'File Browser                             ', shortcut = 'n t', action = 'NvimTreeToggle'},
        {icon = '  ', desc = 'Find  word                               ', shortcut = 'n w', action = 'Telescope live_grep'},
        {icon = '  ', desc = 'Find  string                             ', shortcut = 'n s', action = 'Telescope grep_string'},
        {icon = "  ", desc = 'Edit config                              ', shortcut = "n e", action = "edit $MYVIMRC"}
    }

    dh.custom_footer = function()
        local footer = {'config by kovey', 'IDE with neovim'}
        print(footer)
        return footer
    end
end

return M

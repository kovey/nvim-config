local M = {}

function M.config ()
   local autopairs = require 'nvim-autopairs'
   autopairs.setup{map_c_h = true, map_cr = false}
    -- require("nvim-autopairs.completion.cmp").setup {
    --   map_cr = false, --  map <CR> on insert mode
    --   map_complete = true, -- it will auto insert `(` after select function or method item
    -- }
end

return M

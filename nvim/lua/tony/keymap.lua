local T = {}

local function bind(op, outer_opts)  
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

T.nmap = bind("n", {noremap = false})
T.nnoremap = bind("n")
T.vnoremap = bind("v")
T.xnoremap = bind("x")
T.inoremap = bind("i")

return T

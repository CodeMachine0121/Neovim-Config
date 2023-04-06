require'nvim-tree'.setup{
    diagnostics = {
        enable=true
    },
}


function map(mode, lhs, rhs)
    local options = { noremap = true, silent }
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<C-f>', ':NvimTreeToggle<CR>')

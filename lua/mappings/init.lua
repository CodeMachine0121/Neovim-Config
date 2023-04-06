function map(mode, lhs, rhs)
    local options = { noremap = true, silent }
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<C-f>', ':NvimTreeToggle<CR>')

-- jump
map('n', 'hh', '^')
map('n', 'll', '$')
map('i', 'zf', '<Esc>zf')
map('n', 'z1', 'hhf(ww')

-- insert
map('n', 'z,', 'A,<Esc>')
map('i','z,', '<Esc>A,')
map('n','z;', 'A;<Esc>')
map('i', 'z;', '<Esc>A;')
map('n', 'z.', 'A.<Esc>')
map('i', 'z.', '<Esc>A.')


-- delete
map('n', 'zcc', '^ci"')
map('n', 'zss', 'ci"')
map('n', 'zb', 'ciw')
map('v', 'zb', '<Esc>zb')
map('n', 'hc', '^C')

-- select
map('n', 'z(', 'vi(')
map('i', 'z(', '<Esc>z(')
map('n', 'z)', 'vi)')
map('i', 'z)', '<Esc>z')
map('n', 'z[', 'vi]')
map('i', 'z[', '<Esc>z[')
map( 'n', 'z]', 'vi]')
map('i', 'z]', '<Esc>z]')
map('n', 'z{', 'vi{')
map('i' ,'z{', '<Esc>z{')
map('n', 'z}', 'vi}')
map('i','z}', '<Esc>z}')
map('n', 'z<', 'vi<')
map('i', 'z<', '<Esc>z<')
map('n', 'z>', 'vi>')
map('i', 'z>', '<Esc>z>')
map('n', 'z"', 'vi"')
map('i', 'z"', '<Esc>z"')
map('n', 'z\'', 'vi')
map('i', 'z\'', '<Esc>z\'')
map('n', 'z/', 'F>wvt<')
map('i', 'z/', '<Esc>z/')
map('i', '<C-x>', '<Esc>dd')
map('i', '<C-a>', '<Esc>ma<CR>ggVG')


-- expend
map('n', '<C-w>', "<cmd>lua require('vi-viz').vizInit()<CR>")
-- expand and contract
map('x', '<C-w>', "<cmd>lua require('vi-viz').vizExpand()<CR>")
map('x', '<left>', "<cmd>lua require('vi-viz').vizContract()<CR>")
-- expand and contract by 1 char either side
map('x', '=', "<cmd>lua require('vi-viz').vizExpand1Chr()<CR>")
map('x', '-', "<cmd>lua require('vi-viz').vizContract1Chr()<CR>")
-- good use for the r key in visual mode
map('x', 'r', "<cmd>lua require('vi-viz').vizPattern()<CR>")
-- nice to have to get dot repeat on single words
map('x', 'c', "<cmd>lua require('vi-viz').vizChange()<CR>")
-- nice to have to insert before and after
map('x', 'ii', "<cmd>lua require('vi-viz').vizInsert()<CR>")
map('x', 'aa', "<cmd>lua require('vi-viz').vizAppend()<CR>")

-- nerd Tab
map('n', '<C-n>', ":tabnew<CR>")
map('n', '<C-Right>',":tabnext<CR>")
map('n', '<C-Left>',":tabprevious<CR>")
map('n', '<C-S-W>',":tabclose<CR>")

map('i', '<C-n>', "<Esc>:tabnew<CR>")
map('i', '<C-Right>',"<Esc>:tabnext<CR>i")
map('i', '<C-Left>',"<Esc>:tabprevious<CR>i")
map('i', '<C-S-W>', "<Esc>:tabclose<CR>")

map('i', '<A-S-l>', "<ESC>:NvimTreeFindFileToggle<CR>")
map('n', '<A-S-l>', ":NvimTreeFindFileToggle<CR>")

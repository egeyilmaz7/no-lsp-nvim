-- mappings, including plugins

-- shortcut to use map
local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- fzf and grep
map("n", "<leader>f", ":lua require('fzf-lua').files()<CR>")      --search current working directory
map("n", "<leader>g", ":lua require('fzf-lua').grep()<CR>")       --grep
map("n", "<leader>G", ":lua require('fzf-lua').grep_cword()<CR>") --grep word under cursor

-- misc
map("n", "<leader>b", ":NvimTreeToggle<CR>")                          --open file explorer
map('n', '<leader>j', ":lua require('FTerm').open()<CR>")             --open term
map('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>') --preserves terminal session
map("n", "<leader>R", ":so %<CR>")                                    --reload neovim config
map("n", "<leader>W", ":set wrap!<CR>")                               --toggle wrap
map("n", "<leader>s", ":w<CR>") 									  -- quick save 
map("n", "<leader>q", ":wq<CR>") 									  -- save and quit
map("n", "<leader>x", ":q!<CR>") 									  -- force quit


-- jj to exit insert mode
map("i", "jj", "<Esc>")

-- disable arrow keys
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
vim.keymap.set('v', '<Up>', '<Nop>')
vim.keymap.set('v', '<Down>', '<Nop>')
vim.keymap.set('v', '<Left>', '<Nop>')
vim.keymap.set('v', '<Right>', '<Nop>')
vim.keymap.set('i', '<Up>', '<Nop>')
vim.keymap.set('i', '<Down>', '<Nop>')
vim.keymap.set('i', '<Left>', '<Nop>')
vim.keymap.set('i', '<Right>', '<Nop>')

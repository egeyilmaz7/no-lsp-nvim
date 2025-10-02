-- my neovim Config

-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
    vim.cmd('silent !curl -fLo ' ..
        data_dir ..
        '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
    vim.o.runtimepath = vim.o.runtimepath
    vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.g.start_time = vim.fn.reltime()
vim.loader.enable()

vim.call('plug#begin')

Plug('bluz71/vim-moonfly-colors', { ['as'] = 'moonfly' }) -- colorscheme
Plug('nvim-tree/nvim-tree.lua')                           -- file explorer
Plug('goolord/alpha-nvim')                                -- pretty startup
Plug('nvim-treesitter/nvim-treesitter')                   -- improved sytnax
Plug('mfussenegger/nvim-lint')                            -- built in language server
Plug('nvim-tree/nvim-tree.lua')                           -- file explorer
Plug('windwp/nvim-autopairs')                             -- autopairs
Plug('ibhagwan/fzf-lua')                                  -- fuzzy finder and grep
Plug('numToStr/FTerm.nvim')                               -- floating terminal

vim.call('plug#end')

-- calling configs
require("config.mappings")
require("config.options")
require("config.autocmd")

-- calling plugins
require("plugins.alpha")
require("plugins.nvim-lint")
require("plugins.colorscheme")

-- for more speed
vim.defer_fn(function()
    require("plugins.autopairs")
    require("plugins.fterm")
    require("plugins.fzf-lua")
    require("plugins.nvim-tree")
    require("plugins.treesitter")
end, 100)


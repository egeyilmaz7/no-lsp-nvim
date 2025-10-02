local options = {
    laststatus = 3,
    ruler = false,             --disable extra numbering
    showcmd = false,           -- hides the command being typed in bottom right 
    wrap = true,               --toggle bound to leader W
    mouse = "a",               --enable mouse
    clipboard = "unnamedplus", --system clipboard integration
    history = 100,             --command line history
    swapfile = false,          --swap just gets in the way, usually
    backup = false,            --disables backup file
    undofile = true,           --undos are saved to file
    cursorline = true,         --highlight line
    ttyfast = true,            --faster scrolling
    smoothscroll = true,       --makes scrolling smooth
    title = true,              --automatic window titlebar

    number = true,             --numbering lines
    relativenumber = true, 
    numberwidth = 4,

    smarttab = true, --indentation stuff
    cindent = true, --enables C style indent
    autoindent = false, --disables automatic indent
    tabstop = 4, --visual width of tab

    foldmethod = "expr",
    foldlevel = 99, --disable folding, lower #s enable
    foldexpr = "nvim_treesitter#foldexpr()",

    termguicolors = true,

    ignorecase = true, --ignore case while searching
    smartcase = true,  --but do not ignore if caps are used

    conceallevel = 2,  --markdown conceal
    concealcursor = "nc",

    splitkeep = 'screen', --stablizie window open/close
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.diagnostic.config({
    signs = false,  --disabels diagnostic signs(error/warning markers) in gutter
})

vim.opt.virtualedit = 'onemore' --allow cursor to move one more position past end of line

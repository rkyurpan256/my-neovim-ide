print("Hello from humanstuff")
require("humanstuff.set")
require("humanstuff.remap")

local augroup = vim.api.nvim_create_augroup
local HumanStuffGroup = augroup('HumanStuff', {})
local autocmd = vim.api.nvim_create_autocmd

autocmd('BufEnter', {
    group = HumanStuffGroup,
    callback = function()
        if vim.bo.filetype == "zig" then
            vim.cmd.colorscheme("tokyonight-night")
        else
            vim.cmd.colorscheme("tokyonight-night")
        end
    end
})


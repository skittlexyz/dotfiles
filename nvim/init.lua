vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.mouse = "a"

vim.cmd("colorscheme default")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

require("plugins")

require("nvim-tree").setup({
    view = {
        width = 30,
        side = "left",
    },
    renderer = {
        highlight_git = true,
        highlight_opened_files = "name",
    }
})

vim.keymap.set(
    "n",
    "<C-Space>",
    ":NvimTreeToggle<CR>",
    { desc = "Toggle nvim-tree" }
)

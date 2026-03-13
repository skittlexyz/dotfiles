return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use {
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({
                render = "foreground",
                enable_named_colors = true,
                enable_tailwind = true,
            })
        end,
    }

    use {
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" },
    }
end)

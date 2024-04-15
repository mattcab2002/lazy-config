return {
    {
        "oxfist/night-owl.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
    },
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    {
        "catppuccin/nvim",
        "projekt0n/github-nvim-theme",
        "maxmx03/dracula.nvim",
        "Mofiqul/vscode.nvim",
        config = function()
            vim.o.background = "dark"
            local c = require("vscode.colors").get_colors()
            require("vscode").setup({
                -- Alternatively set style in setup
                -- style = 'light'

                -- Enable transparent background
                transparent = true,

                -- Enable italic comment
                italic_comments = true,

                -- Disable nvim-tree background color
                disable_nvimtree_bg = true,

                -- Override colors (see ./lua/vscode/colors.lua)
                color_overrides = {
                    -- vscBack = "#000000",
                    -- vscLineNumber = '#92bbcf',
                },

                -- Override highlight groups (see ./lua/vscode/theme.lua)
                group_overrides = {
                    -- this supports the same val table as vim.api.nvim_set_hl
                    -- use colors from this colorscheme by requiring vscode.colors!
                    -- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = false },
                },
            })
            require("vscode").load()

            -- this is garbage, i just kept it not to throw it out
            -- vim.api.nvim_set_hl(0, "@keyword", { fg = c.vscBlue, bg = "NONE" })
            -- vim.api.nvim_set_hl(0, "@type.builtin", { fg = c.vscBlueGreen, bg = "NONE" })
            -- vim.api.nvim_set_hl(0, "@attribute", { fg = c.vscBlueGreen, bg = "NONE" })
            --
            -- vim.api.nvim_set_hl(0, "PreProc", { fg = c.vscBlueGreen, bg = "NONE" })
            -- vim.api.nvim_set_hl(0, "typescriptDefault", { fg = c.vscPink, bg = "NONE" })
            -- vim.api.nvim_set_hl(0, "Type", { fg = c.vscBlueGreen, bg = "NONE" })
        end,
    },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "github_dark_tritanopia",
        },
    },
}

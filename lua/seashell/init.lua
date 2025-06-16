-- lua/seashell/init.lua
local M = {}

-- Color palette for the Seashell theme
M.palette = {
    cursor       = "#fba02f",
    background   = "#08131a",
    foreground   = "#deb88d",
    selection_bg = "#1e4862",
    selection_fg = "#08131a",
    color0       = "#17384c",
    color1       = "#d05023",
    color2       = "#027b9b",
    color3       = "#fba02f",
    color4       = "#1d4850",
    color5       = "#68d3f0",
    color6       = "#50a3b5",
    color7       = "#deb88d",
    color8       = "#424b52",
    color9       = "#d38677",
    color10      = "#618c98",
    color11      = "#fdd29e",
    color12      = "#1abcdd",
    color13      = "#bbe3ee",
    color14      = "#86abb3",
    color15      = "#fee3cd",
}

function M.setup()
    local hl = vim.api.nvim_set_hl
    local p = M.palette

    -- Basic highlight groups
    hl(0, "Normal", { bg = p.background, fg = p.foreground })
    hl(0, "Cursor", { bg = p.cursor })
    hl(0, "Visual", { bg = p.selection_bg, fg = p.selection_fg })
    hl(0, "LineNr", { fg = p.color8 })
    hl(0, "CursorLineNr", { fg = p.color3 })

    -- Syntax
    hl(0, "Comment", { fg = p.color8, italic = true })
    hl(0, "Constant", { fg = p.color13 })
    hl(0, "String", { fg = p.color15 })
    hl(0, "Identifier", { fg = p.color2 })
    hl(0, "Function", { fg = p.color9 })
    hl(0, "Statement", { fg = p.color10 })
    hl(0, "Include", { fg = p.color10, italic = true }) -- e.g. import in Python
    hl(0, "Type", { fg = p.color14 })
    hl(0, "Special", { fg = p.color12 })

    -- Terminal colors
    for i = 0, 15 do
        vim.g["terminal_color_" .. i] = p["color" .. i]
    end
end

-- Activate the Seashell theme
function M.load()
    vim.cmd("highlight clear")
    vim.cmd("syntax reset")
    vim.o.background = "dark"
    vim.g.colors_name = "seashell"
    M.setup()
end

return M

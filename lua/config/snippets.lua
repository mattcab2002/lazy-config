local ls = require("luasnip")

local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node

local date = function()
    return { os.date("%Y-%m-%d") }
end

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "meta",
            namr = "Metadata",
            dscr = "Yaml metadata format for markdown",
        }, {
            text({ "---", "title: " }),
            insert(1, "note_title"),
            text({ "", "author: Matthew Cabral" }),
            text({ "", "date: " }),
            func(date, {}),
            text({ "", "lastmod: " }),
            func(date, {}),
            text({ "", "---", "" }),
        }),
    },
})

local ls = require("luasnip")

local s = ls.snippet
--local sn = ls.snippet_node
--local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
--local c = ls.choice_node
--local d = ls.dynamic_node
--local r = ls.restore_node
--local events = require("luasnip.util.events")
--local ai = require("luasnip.nodes.absolute_indexer")
--local fmt = require("luasnip.extras.fmt").fmt
--local m = require("luasnip.extras").m
--local lambda = require("luasnip.extras").l
--local postfix = require("luasnip.extras.postfix").postfix


-- OLDNAMES 
-- some shorthands...
--local snip = ls.snippet
--local node = ls.snippet_node
--local text = ls.text_node
--local insert = ls.insert_node
--local func = ls.function_node
--local choice = ls.choice_node
--local dynamicn = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

local snippets = {

      s({
         trig = "date",
         namr = "Date",
         dscr = "Date in the form of YYYY-MM-DD",
      }, {
         f(date, {}),
      }),
      -- 
      s({
         trig = "meta",
         namr = "Metadata",
         dscr = "Yaml metadata format for markdown"
      },
      {
         t({"---",
         "title: "}), i(1, "note_title"), t({"",
         "author: "}), i(2, "author"), t({"",
         "date: "}), f(date, {}), t({"",
         "categories: ["}), i(3, ""), t({"]",
         "lastmod: "}), f(date, {}), t({"",
         "tags: ["}), i(4), t({"]",
         "comments: true",
         "---", ""}),
         i(0)
      }),
      -- 
   }

return snippets



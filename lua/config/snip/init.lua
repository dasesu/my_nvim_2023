local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

--local snippets_folder = vim.fn.stdpath "config" .. "/lua/config/snip/snippets/"
require("luasnip.loaders.from_vscode").lazy_load()

--require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./friendly-snippets/" } })
require("luasnip.loaders.from_vscode").lazy_load{ paths = { "~/.config/nvim/lua/config/snip/friendly-snippets/" } }

-- Load custom snippets
require("luasnip.loaders.from_lua").lazy_load { paths = { "~/.config/nvim/lua/config/snip/snippets/" } }


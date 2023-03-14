return {
  "L3MON4D3/LuaSnip",
  build = (not jit.os:find("Windows"))
      and "echo -e 'NOTE: jsregexp is optional, so not a big deal if it fails to build\n'; make install_jsregexp"
    or nil,
  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      local luasnip = require("luasnip")
      luasnip.filetype_extend("typescriptreact", { "html" })

      -- Custom Snippets template
      -- local snip = luasnip.snippet
      -- local node = luasnip.snippet_node
      -- local text = luasnip.text_node
      -- local insert = luasnip.insert_node
      -- local func = luasnip.function_node
      -- local choice = luasnip.choice_node
      -- local dynamicn = luasnip.dynamic_node
      --
      -- luasnip.add_snippets(nil, {
      --   javascriptreact = {
      --     snip({
      --       trig = "jrc",
      --       namr = "JS React Component",
      --       dscr = "JavaScript React Component",
      --     }, {
      --       text({ "", "title: " }),
      --       insert(0),
      --     }),
      --   },
      -- })

      require("luasnip/loaders/from_vscode").lazy_load()
    end,
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  -- stylua: ignore
  keys = {
    {
      "<tab>",
      function()
        return "<tab>"
      end,
      expr = true, silent = true, mode = "i",
    },
    { "<tab>", function() require("luasnip").jump(1) end, mode = "s" },
    { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "s" } },
  },
}

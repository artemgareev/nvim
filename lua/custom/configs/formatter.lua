local M = {
  filetype = {
    json = {
      require("formatter.filetypes.json").jq,
    },
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    go = {
      require("formatter.filetypes.go").gofmt,
    },
    --   ["*"] = {
    --     require("formatter.filetypes.any").remove_trailing_whitespace,
    --   },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})

return M

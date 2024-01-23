local M = {}

M.disabled = {
  n = {
    ["<leader>fm"] = "",
  },
}
M.general = {
  n = {
    ["<leader>fm"] = { "<cmd>:Format<CR>", "LSP formatting" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "move selected text down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selected text up" },
  },
}
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> gotagadd json <cr>",
      "add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> gotagadd yaml <cr>",
      "add yaml struct tags",
    },
  },
}

return M

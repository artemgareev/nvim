local M = {}

M.disabled = {
	n = {
		["<leader>fm"] = "",
	},
}
M.general = {
	n = {
		["<leader>fm"] = { "<cmd>:Format<CR>", "LSP formatting" },
		["<leader>dt"] = { "<cmd>:DiffviewOpen<CR>", "Open DiffView" },
		["<leader>dc"] = { "<cmd>:DiffviewClose<CR>", "Close DiffView" },
		["<leader>rt"] = { "<cmd>lua require('spectre').toggle()<CR>", "Toggle replace tool" },
		["<leader>tu"] = { "<cmd>:UndotreeToggle<CR>", "Toggle undo tree" },
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
			"<cmd> GoTagAdd json -transform camelcase <cr>",
			"add json struct tags",
		},
		["<leader>gsy"] = {
			"<cmd> GoTagAdd yaml <cr>",
			"add yaml struct tags",
		},
		["<leader>gsr"] = {
			"<cmd> GoTagRm json <cr>",
			"remove json struct tags",
		},
	},
}
M.dap = {
	plugin = true,
	n = {
		["<leader>db"] = {
			"<cmd> DapToggleBreakpoint <CR>",
			"Add breakpoint at line",
		},
		["<leader>dus"] = {
			function()
				local widgets = require("dap.ui.widgets")
				local sidebar = widgets.sidebar(widgets.scopes)
				sidebar.open()
			end,
			"Open debugging sidebar",
		},
	},
}
M.dap_go = {
	plugin = true,
	n = {
		["<leader>dgt"] = {
			function()
				require("dap-go").debug_test()
			end,
			"Debug go test",
		},
		["<leader>dgl"] = {
			function()
				require("dap-go").debug_last()
			end,
			"Debug last go test",
		},
	},
}

return M

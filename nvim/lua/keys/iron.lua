return {
  { "<leader>ro", "<cmd>IronRepl<cr>", desc = "REPL open" },
  { "<leader>rr", "<cmd>IronRestart<cr>", desc = "REPL restart" },
  { "<leader>rh", "<cmd>IronHide<cr>", desc = "REPL hide" },
  { "<leader>rq", function() require("iron.core").close_repl() end, desc = "REPL close" },
  { "<leader>rf", "<cmd>IronFocus<cr>", desc = "REPL focus" },
  { "<leader>sl" , function() require("iron.core").send_line() end, desc = "Send line" },
  { "<leader>sf" , function() require("iron.core").send_file() end, desc = "Send file" },
  { "<leader>sc" , function() require("iron.core").run_motion("send_motion") end, desc = "Send motion" },
  { "<leader>s<cr>" , function() require("iron.core").send(nil, string.char(13)) end, desc = "Send <cr>" },
  { "<leader>s<space>" , function() require("iron.core").send(nil, string.char(03)) end, desc = "Interrupt REPL" },
  { "<leader>sq" , function() require("iron.core").close_repl() end, desc = "Send exit" },
  { "<leader>s", function() require("iron.core").visual_send() end, desc = "Send selection", mode = "v"}
}

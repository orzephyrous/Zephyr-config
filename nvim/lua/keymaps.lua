vim.g.mapleader = ' '

local wk = require("which-key")
local iron = require("iron.core")

wk.register({
  b = {
    name = "buffer",
    n = { "<cmd>BufferNext<cr>", "Buffer Next" },
    p = { "<cmd>BufferPrevious<cr>", "Buffer Previous"},
    h = { "<cmd>BufferMovePrevious<cr>", "Buffer Move Left" },
    l = { "<cmd>BufferMoveNext<cr>", "Buffer Move Right"},
    q = { "<cmd>BufferClose<cr>", "Buffer Close"},
    o = { "<cmd>BufferCloseAllButCurrent<cr>", "Buffer Close Others"},
    f = { "<cmd>BufferPick<cr>", "Buffer Pick"},
  },
  t = { 
    name = "tree",
    t = { "<cmd>NvimTreeToggle<cr>", "Toggle Nvim-Tree" },
    o = { "<cmd>NvimTreeOpen<cr>", "Open Nvim-Tree" },
    q = { "<cmd>NvimTreeClose<cr>", "Close Nvim-Tree" },
  },
  p = {
    name = "paste",
    p = { '"+p', "Paste System Clipboard" },
    P = { '"+P', "Paste System Clipboard Before" },
    i = { "<cmd>PasteImg<cr>", "Paste Markdown Image" },
  },
  m = { "<cmd>MarkdownPreviewToggle<cr>", "Toggle Markdown Preview"},
  f = {
    name = "telescope",
    f = { "<cmd>Telescope find_files<cr>", "Find files" },
    g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
    b = { "<cmd>Telescope buffers<cr>", "Find buffers" },
    h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
  },
  r = {
    name = "repl",
    o = { "<cmd>IronRepl<cr>", "REPL open" },
    r = { "<cmd>IronRestart<cr>", "REPL restart" },
    h = { "<cmd>IronHide<cr>", "REPL hide" },
    q = { function() iron.close_repl() end, "REPL close" },
    f = { "<cmd>IronFocus<cr>", "REPL focus" },
  },
  s = {
    name = "send",
    l = { function() iron.send_line() end, "Send line" },
    f = { function() iron.send_file() end, "Send file" },
    c = { function() iron.run_motion("send_motion") end, "Send motion" },
    ["<cr>"] = { function() iron.send(nil, string.char(13)) end, "Send <cr>" },
    ["<space>"] = {function() iron.send(nil, string.char(03)) end, "Interrupt REPL" },
    q = { function() iron.close_repl() end, "Send exit" },
  },
}, { prefix = "<leader>" })

wk.register({
  s = { function() iron.visual_send() end, "Send selection" },
}, { mode = "v", prefix = "<leader>" })


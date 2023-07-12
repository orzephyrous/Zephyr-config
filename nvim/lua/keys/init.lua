local wk = require("which-key")
local presets = require("which-key.plugins.presets")

presets.operators["gc"] = "Comment linewise"
presets.operators["gb"] = "Comment blockwise"
presets.operators["ys"] = "Surround add"
presets.operators["yS"] = "Surround add (new line)"
presets.operators["ds"] = "Surround delete"
presets.operators["cs"] = "Surround change"
presets.operators["cS"] = "Surround change (new line)"

wk.register({
  l= { "<cmd>Lazy<cr>", "Lazy" },
  b = {
    name = "buffer",
    n = { "<cmd>BufferLineCycleNext<cr>", "Buffer Next" },
    p = { "<cmd>BufferLineCyclePrev<cr>", "Buffer Prev"},
    h = { "<cmd>BufferLineMovePrev<cr>", "Buffer Move Left" },
    l = { "<cmd>BufferLineMoveNext<cr>", "Buffer Move Right" },
    Q = { "<cmd>BufferLinePickClose<cr>", "Buffer Close Pick" },
    q = { "<cmd>BufDel<cr>", "Buffer Close" },
    o = { "<cmd>BufferLineCloseOthers<cr>", "Buffer Close Others"},
    f = { "<cmd>BufferLinePick<cr>", "Buffer Pick"},
  },
  t = { name = "tree", },
  p = { '"+p', "Paste System Clipboard" },
  P = { '"+P', "Paste System Clipboard Before" },
  f = { name = "telescope" },
  r = { name = "repl" },
  s = { name = "send to repl" },
  q = { "<cmd>qa<cr>", "Quit" }
}, { prefix = "<leader>" })

wk.register({
  s = "Send selection",
}, { mode = "v", prefix = "<leader>" })

wk.register({
  n = { "<cmd>BufferLineCycleNext<cr>", "Buffer Next" },
  p = { "<cmd>BufferLineCyclePrev<cr>", "Buffer Prev" }
}, { prefix = "g" })

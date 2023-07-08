local iron = require("iron.core")

iron.setup {
  config = {
    -- How the repl window will be displayed
    repl_open_cmd = require('iron.view').split.botright(0.4),
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

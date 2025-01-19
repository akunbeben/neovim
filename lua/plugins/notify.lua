local notify = require("notify")

notify.setup({
  stages = "slide",
  timeout = 3000,
  icons = {
    ERROR = " ",
    WARN = " ",
    INFO = " ",
    TRACE = "ﭧ ",
  },
})

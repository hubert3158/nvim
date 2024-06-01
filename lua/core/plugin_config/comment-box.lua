require('comment-box').setup({
  -- type of comments:
  --   - "line":  comment-box will always use line style comments
  --   - "block": comment-box will always use block style comments
  --   - "auto":  comment-box will use block line style comments if
  --              multiple lines are selected, line style comments
  --              otherwise
  comment_style = "line",
  doc_width = 80, -- width of the document
  box_width = 60, -- width of the boxes
  borders = { -- symbols used to draw a box
    top = "─",
    bottom = "─",
    left = "│",
    right = "│",
    top_left = "╭",
    top_right = "╮",
    bottom_left = "╰",
    bottom_right = "╯",
  },
  line_width = 70, -- width of the lines
  lines = { -- symbols used to draw a line
    line = "─",
    line_start = "─",
    line_end = "─",
    title_left = "─",
    title_right = "─",
  },
  outer_blank_lines_above = false, -- insert a blank line above the box
  outer_blank_lines_below = false, -- insert a blank line below the box
  inner_blank_lines = false, -- insert a blank line above and below the text
  line_blank_line_above = false, -- insert a blank line above the line
  line_blank_line_below = false, -- insert a blank line below the line
})





local wk = require("which-key")
wk.register({
  ["<Leader>"] = {
    c = {
      name = " □  Boxes",
      b = { "<Cmd>CBccbox<CR>", "Box Title" },
      t = { "<Cmd>CBllline<CR>", "Titled Line" },
      l = { "<Cmd>CBline<CR>", "Simple Line" },
      m = { "<Cmd>CBllbox14<CR>", "Marked" },
      -- d = { "<Cmd>CBd<CR>", "Remove a box" },
    },
  },
})

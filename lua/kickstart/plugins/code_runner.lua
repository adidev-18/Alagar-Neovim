return {
  "CRAG666/code_runner.nvim",
  config = true,
  mode = 'float',
  --focus = true,
  startinsert = true,
  float = {
    close_key = '<ESC>',
    border = "none",
    height = 1.0,
    width = 1.0,
    x = 0.5,
    y = 0.5,

    border_hl = "FloatBorder",
    float_hl = "Normal",
    blend = 0,
  },

  filetype = {
    python = "python3 -u",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt",
    },
  },

}

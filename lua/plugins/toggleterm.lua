return {
  "akinsho/toggleterm.nvim",
  specs = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["<A-i>"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" }
        maps.t["<A-i>"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" }
        maps.n["í"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" }
        maps.t["í"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" }

      end,
    },
  },
  opts = {
    float_opts ={
      border = 'curved',
      title_pos = 'center',
      height = 30,
      width = 100,

    },
  },
}

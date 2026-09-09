return {
  "nvim-neo-tree/neo-tree.nvim",
  specs = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["<C-n>"] = { "<Cmd>Neotree toggle<CR>", desc = "Toggle Explorer" }
        maps.n["<Leader>e"] = {
          function()
            if vim.bo.filetype == "neo-tree" then
              vim.cmd.wincmd "p"
            else
              vim.cmd.Neotree "focus"
            end
          end,
          desc = "Toggle Explorer Focus",
        }
      end,
    },
  },
opts = function(_, opts)
    local astro, get_icon = require "astrocore", require("astroui").get_icon
    local git_available = vim.fn.executable "git" == 1
    local sources = {
      { source = "filesystem", display_name = get_icon("FolderClosed", 1, true) .. "File" },
      { source = "buffers", display_name = get_icon("DefaultFile", 1, true) .. "Bufs" },
      { source = "diagnostics", display_name = get_icon("Diagnostic", 1, true) .. "Diagnostic" },
    }
    if git_available then
      table.insert(sources, 3, { source = "git_status", display_name = get_icon("Git", 1, true) .. "Git" })
    end
    opts = astro.extend_tbl(opts, {
      window = {
        width = 30,
        mappings = {
          o = "child_or_open",
        },
      },
    })

    return opts
  end,
}

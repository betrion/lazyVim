return {

  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      Colors = require("catppuccin.palettes").get_palette("frappe")

      require("catppuccin").setup({
        transparent_background = true,
        custom_highlights = function(Colors)
          return {
            VertSplit = { fg = Colors.overlay0 },
          }
        end,
      })
    end,
  },
  -- {
  --   "EdenEast/nightfox.nvim",
  --   config = function()
  --     require("nightfox").setup({
  --       options = {
  --         -- Compiled file's destination location
  --         compile_path = vim.fn.stdpath("cache") .. "/nightfox",
  --         compile_file_suffix = "_compiled", -- Compiled file suffix
  --         transparent = true, -- Disable setting background
  --         terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
  --         dim_inactive = false, -- Non focused panes set to alternative background
  --         module_default = true, -- Default enable value for modules
  --         colorblind = {
  --           enable = false, -- Enable colorblind support
  --           simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
  --           severity = {
  --             protan = 0, -- Severity [0,1] for protan (red)
  --             deutan = 0, -- Severity [0,1] for deutan (green)
  --             tritan = 0, -- Severity [0,1] for tritan (blue)
  --           },
  --         },
  --         styles = { -- Style to be applied to different syntax groups
  --           comments = "italic", -- Value is any valid attr-list value `:help attr-list`
  --           conditionals = "NONE",
  --           constants = "NONE",
  --           functions = "bold",
  --           keywords = "bold",
  --           numbers = "NONE",
  --           operators = "NONE",
  --           strings = "NONE",
  --           types = "NONE",
  --           variables = "NONE",
  --         },
  --         inverse = { -- Inverse highlight for different types
  --           match_paren = false,
  --           visual = false,
  --           search = false,
  --         },
  --         modules = { -- List of various plugins and additional options
  --           -- ...
  --         },
  --       },
  --       palettes = {},
  --       specs = {},
  --       groups = {},
  --     })
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      integrations = {
        aerial = true,
        alpha = true,

        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
}

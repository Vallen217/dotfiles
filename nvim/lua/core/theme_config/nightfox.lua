-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,    -- Non focused panes set to alternative background
    module_default = true,   -- Default enable value for modules
    colorblind = {
      enable = false,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,          -- Severity [0,1] for protan (red)
        deutan = 0,          -- Severity [0,1] for deutan (green)
        tritan = 0,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {               -- Style to be applied to different syntax groups
      comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
      conditionals = "italic",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {
      nightfox = {
          bg0 =     "#13151e",
          bg1 =     "#050810",
          bg2 =     "#1d2235",
          bg3 =     "#1d2235",
          bg4 =     "#1d2235",
          fg0 =     "#f0f0ff",
          fg1 =     "#e5f4f8",
          fg2 =     "#9eb6cb",
          fg3 =     "#414258",
          sel0 =    "#13151e",
          sel1 =    "#13151e",
          comment = "#414258",
          black =   "#050810",
          red =     "#f7617f",
          green =   "#8de798",
          yellow =  "#f5eb82",
          blue =    "#73a2ff",
          magenta = "#a086f7",
          cyan =    "#5ee6f0",
          white =   "#f0f0ff",
          orange =  "#ff9b6c",
          pink =    "#d53686"
      }
  },
  specs = {},
  groups = {},
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")

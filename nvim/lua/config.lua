require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
        {
            'filename',
            color = {fg = "#61afef"}
        }
    },
    lualine_x = {
        {
            "diagnostics",
            sources = {"ale"},
            color_info = "#E5C07B";
            symbols = {
                error = " ",
                warn = " ",
                info = " ",
                hint = " "
            }
        },
        {
            "encoding",
            color = {fg = "#C678dd",}
        },
        {
            "fileformat",
            color = {fg = "#98c379", gui = "bold"}
        },
        {
            "filetype",
            color = {fg = "#E5C07B", gui = "bold"}
        }
    },
    lualine_y = {
        {
            "progress",
            color = {fg = "#C678DD", gui = "bold"}
        }
    },
    lualine_z = {"location"},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

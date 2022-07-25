local colors = {
  red = '#ca1243',
  grey = '#a0a1a7',
  black = '#383a42',
  white = '#f3f3f3',
  light_green = '#83a598',
  orange = '#fe8019',
  green = '#8ec07c',
}

local empty = require('lualine.component'):extend()
function empty:draw(default_highlight)
  self.status = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < 'x'
    for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = colors.white, bg = colors.white } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= 'table' then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = '' } or { left = '' }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
end

local function modified()
  if vim.bo.modified then
    return '+'
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return '-'
  end
  return ''
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'powerline_dark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {
      {
        'mode',
        icons_enabled = true, -- Enables the display of icons alongside the component.
        -- Defines the icon to be displayed in front of the component.
        -- Can be string|table
        -- As table it must contain the icon as first entry and can use
        -- color option to custom color the icon. Example:
        -- {'branch', icon = ''} / {'branch', icon = {'', color={fg='green'}}}

        -- icon position can also be set to the right side from table. Example:
        -- {'branch', icon = {'', align='right', color={fg='green'}}}
        icon = nil,

        separator = nil,      -- Determines what separator to use for the component.
                              -- Note:
                              --  When a string is provided it's treated as component_separator.
                              --  When a table is provided it's treated as section_separator.
                              --  Passing an empty string disables the separator.
                              --
                              -- These options can be used to set colored separators
                              -- around a component.
                              --
                              -- The options need to be set as such:
                              --   separator = { left = '', right = ''}
                              --
                              -- Where left will be placed on left side of component,
                              -- and right will be placed on its right.
                              --

        cond = nil,           -- Condition function, the component is loaded when the function returns `true`.

        -- Defines a custom color for the component:
        --
        -- 'highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' } | function
        -- Note:
        --  '|' is synonymous with 'or', meaning a different acceptable format for that placeholder.
        -- color function has to return one of other color types ('highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' })
        -- color functions can be used to have different colors based on state as shown below.
        --
        -- Examples:
        --   color = { fg = '#ffaa88', bg = 'grey', gui='italic,bold' },
        --   color = { fg = 204 }   -- When fg/bg are omitted, they default to the your theme's fg/bg.
        --   color = 'WarningMsg'   -- Highlight groups can also be used.
        --   color = function(section)
        --      return { fg = vim.bo.modified and '#aa3355' or '#33aa88' }
        --   end,
        color = nil, -- The default is your theme's color for that section and mode.

        -- Specify what type a component is, if omitted, lualine will guess it for you.
        --
        -- Available types are:
        --   [format: type_name(example)], mod(branch/filename),
        --   stl(%f/%m), var(g:coc_status/bo:modifiable),
        --   lua_expr(lua expressions), vim_fun(viml function name)
        --
        -- Note:
        -- lua_expr is short for lua-expression and vim_fun is short for vim-function.
        type = nil,

        padding = 1, -- Adds padding to the left and right of components.
                     -- Padding can be specified to left or right independently, e.g.:
                     --   padding = { left = left_padding, right = right_padding }

        fmt = nil,   -- Format function, formats the component's output.
        on_click = nil, -- takes a function that is called when component is clicked with mouse.
                     -- the function receives several arguments
                     -- - number of clicks incase of multiple clicks
                     -- - mouse button used (l(left)/r(right)/m(middle)/...)
                     -- - modifiers pressed (s(shift)/c(ctrl)/a(alt)/m(meta)...)
      }
    },
    lualine_b = {
      'branch', 
      'diff',
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'error' },
        diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
      },
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'warn' },
        diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
      },
    },
    lualine_c = {
      {
        'filename',
        file_status = true,      -- Displays file status (readonly status, modified status)
        path = 1,                -- 0: Just the filename
                                 -- 1: Relative path
                                 -- 2: Absolute path
                                 -- 3: Absolute path, with tilde as the home directory

        shorting_target = 20,    -- Shortens path to leave 40 spaces in the window
                                 -- for other components. (terrible name, any suggestions?)
        symbols = {
          modified = '[+]',      -- Text to show when the file is modified.
          readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
        }
      }
    },
    lualine_x = {
      'encoding',
      {
        'fileformat',
        symbols = {
          unix = '🐧',
          dos = '🧱',
          mac = '🍎',
        }
      },
      {
        'filetype',
        colored = true,   -- Displays filetype icon in color if set to true
        icon_only = false, -- Display only an icon for filetype
        icon = { align = 'right' }, -- Display filetype icon on the right hand side
        -- icon =    {'X', align='right'}
        -- Icon string ^ in table is ignored in filetype component
      }
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
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
  winbar = {},
  inactive_winbar = {},
  extensions = {
  }
}

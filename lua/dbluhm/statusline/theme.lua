local colors0 = {
  unknown='#b4b7b4',
  unknown3='#a3685a',
  white='#ffffff',
  bg='#1d1f21',
  line='#282a2e',
  selection='#373b41',
  comment='#969896',
  foreground='#c5c8c6',
  red='#cc6666',
  orange='#de935f',
  yellow='#f0c674',
  green='#b5bd68',
  aqua='#8abeb7',
  blue='#81a2be',
  purple='#b294bb',
  grey='#e0e0e0',
}

local colors = {
  black = {gui = '#1d1f21', cterm = '00', cterm16 = '0'},
  blue = {gui = '#81a2be', cterm = '04', cterm16 = '4'},
  cyan = { gui = '#8abeb7', cterm = '06', cterm16 = '6'},
  green = {gui = '#b5bd68', cterm = '02', cterm16 = '2'},
  grey_comment = {gui = '#969896', cterm = '08', cterm16 = '8'},
  grey_cursor = {gui = '#373b41', cterm = '19', cterm16 = '8'},
  grey_menu = {gui = '#282a2e', cterm = '18', cterm16 = '8'},
  purple = {gui = '#b294bb', cterm = '05', cterm16 = '5'},
  red = {gui = '#cc6666', cterm = '01', cterm16 = '1'},
  white = {gui = '#c5c8c6', cterm = '07', cterm16 = '7'},
  yellow = {gui = '#f0c674', cterm = '03', cterm16 = '3'},
}

local inactive = {
  guifg = colors.grey_comment.gui,
  guibg = colors.grey_cursor.gui,
  ctermfg = colors.grey_comment.cterm,
  ctermbg = colors.grey_cursor.cterm,
}

return {
  mode = {
    inactive = inactive,
    normal = {
      guifg = colors.black.gui,
      guibg = colors.blue.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.blue.cterm,
    },
    insert = {
      guifg = colors.black.gui,
      guibg = colors.green.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.green.cterm,
    },
    replace = {
      guifg = colors.black.gui,
      guibg = colors.cyan.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.cyan.cterm,
    },
    visual = {
      guifg = colors.black.gui,
      guibg = colors.purple.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.purple.cterm,
    },
    command = {
      guifg = colors.black.gui,
      guibg = colors.red.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.red.cterm,
    },
  },
  low = {
    active = {
      guifg = colors.grey_comment.gui,
      guibg = colors.grey_menu.gui,
      ctermfg = colors.grey_comment.cterm,
      ctermbg = colors.grey_menu.cterm,
    },
    inactive = inactive,
  },
  med = {
    active = {
      guifg = colors.white.gui,
      guibg = colors.grey_menu.gui,
      ctermfg = colors.white.cterm,
      ctermbg = colors.grey_menu.cterm,
    },
    inactive = inactive,
  },
  high = {
    active = {
      guifg = colors.white.gui,
      guibg = colors.grey_cursor.gui,
      ctermfg = colors.white.cterm,
      ctermbg = colors.grey_cursor.cterm,
    },
    inactive = inactive,
  },
  error = {
    active = {
      guifg = colors.black.gui,
      guibg = colors.red.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.red.cterm,
    },
    inactive = inactive,
  },
  warning = {
    active = {
      guifg = colors.black.gui,
      guibg = colors.yellow.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.yellow.cterm,
    },
    inactive = inactive,
  },
  bufferline = {
    separator = inactive,
    current = {
      guifg = colors.black.gui,
      guibg = colors.green.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.green.cterm,
    },
    current_modified = {
      guifg = colors.black.gui,
      guibg = colors.blue.gui,
      ctermfg = colors.black.cterm,
      ctermbg = colors.blue.cterm,
    },
    background = {
      guifg = colors.green.gui,
      guibg = colors.grey_menu.gui,
      ctermfg = colors.green.cterm,
      ctermbg = colors.grey_menu.cterm,
    },
    background_modified = {
      guifg = colors.blue.gui,
      guibg = colors.grey_menu.gui,
      ctermfg = colors.blue.cterm,
      ctermbg = colors.grey_menu.cterm,
    },
  },
}


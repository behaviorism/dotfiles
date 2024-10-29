local g = vim.g
local o = vim.opt

g.mapleader = " "
g.maplocalleader = "\\"

-- Move between buffers without saving
o.hidden = true

-- Hide menu
o.wildoptions = "fuzzy"

o.backup = false

-- Search
o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.hlsearch = false

-- Clipboard sync
o.clipboard = "unnamedplus"

-- Line numbers
o.nu = true
o.relativenumber = true

-- Visuals
o.guicursor = ""
o.wrap = false
o.scrolloff = 4

o.signcolumn = "yes:1"
o.cursorline = true
-- Sets the current line number on the same column
-- as the other numbers
-- arch neovim
-- o.statuscolumn = "%s%r"
o.numberwidth = 1

-- Make cursor blink
o.guicursor = "a:block-blinkon500"

-- Tabs
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2

o.list = true
o.listchars:append("space:·")

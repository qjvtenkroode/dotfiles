-- Plugins
require('plugins')

-- General
vim.g.mapleader = ','
vim.g.tokyonight_style = 'night'
vim.opt.cursorline = true         -- show line where cursor is
vim.opt.encoding = 'utf8'         -- use utf8 encoding
vim.opt.expandtab = true          -- use spaces instead of tabs
vim.opt.ignorecase = true         -- ignore case with search
vim.opt.ruler = false             -- no ruler, use statusline
vim.opt.rnu = true                -- relative linenumbers
vim.opt.scrolloff=3               -- keep three lines before and after cursor
vim.opt.shiftwidth=4              -- 4 spaces for autoindent
vim.opt.showcmd = true            -- show incomplete commands
vim.opt.showmatch = true          -- show matching brackets
vim.opt.smarttab = true           -- be smart with using tabs
vim.opt.softtabstop=4             -- multiple spaces as tabstop
  -- statusline
vim.opt.statusline = '%m %y %r %F %= %c:%l %L %p%% [%n]' -- modified; filetype; readonly; full file path; right side; column, linenumber / maximum linenumber; percentage of file; buffer number
vim.opt.tabstop=4                 -- 1 tab == 4 spaces
  -- Highlighting and Indentation
local map = vim.api.nvim_set_keymap
map('n', '<Space>', ':nohlsearch<Bar>:echo<CR>', {noremap = true, silent = true})  -- pressing spacebar removes the highlight

-- vim.cmd[[colorscheme tokyonight]]

-- LSP config
require('lsp_config')

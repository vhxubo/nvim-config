require "config.plugins"
require "config.alpha"
require "config.bufferline"
require "config.comment"
require "config.lualine"
require "config.nvim-tree"
require "config.toggleterm"
require "config.treesitter"
require "config.whichkey"
require "config.lightspeed"
require "config.keymap"
require "config.lsp"
require "config.cmp"
require "config.autopairs"

vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]


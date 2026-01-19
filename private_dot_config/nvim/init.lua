
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.completeopt = {"menuone","noselect","popup"}
vim.o.termguicolors = true
vim.cmd [[
  hi link @function Function
  hi link @type Type
  hi link @constant Constant
  hi link @macro PreProc
]]

vim.lsp.enable({"clangd"})

require('config.keybinds')
require('config.lazy')


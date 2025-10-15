vim.cmd([[
call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()
]])

-- Базовые настройки
vim.g.mapleader = " "
vim.opt.clipboard = 'unnamedplus'

-- Включение основных возможностей
vim.cmd('syntax on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')

-- Маппинги
local keymap = vim.keymap.set

-- NERDTree
keymap('n', '<leader>n', ':NERDTreeToggle<CR>')
keymap('n', '<leader>ec', ':vsplit ~/.config/nvim/init.lua<CR>')
keymap('n', '<leader>sc', ':source ~/.config/nvim/init.lua<CR>')

-- Выход из режимов
keymap('i', 'zz', '<Esc>')
keymap('i', 'яя', '<Esc>') 
keymap('v', 'zz', '<Esc>')
keymap('v', 'яя', '<Esc>')

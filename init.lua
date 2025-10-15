-- Плагины
vim.cmd([[
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'powerman/vim-plugin-ruscmd'
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

-- Установка табов в 4 пробела
vim.opt.tabstop = 4       -- Количество пробелов, которыми отображается символ табуляции
vim.opt.shiftwidth = 4    -- Количество пробелов для автоотступа
vim.opt.softtabstop = 4   -- Количество пробелов при нажатии клавиши Tab в режиме вставки
vim.opt.expandtab = true  -- Преобразует табы в пробелы
vim.opt.autoindent = true -- Сохраняет отступ текущей строки для следующей
vim.opt.smartindent = true -- Включает "умный" отступ

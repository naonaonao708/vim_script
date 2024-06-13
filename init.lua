-- 基本設定
vim.o.number = true
vim.o.title = true
vim.o.showmatch = true
vim.o.ruler = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.clipboard = "unnamed"
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.t_Co = "256"
vim.cmd('syntax enable')
vim.cmd('colorscheme atom-dark')

-- キーマッピング
vim.api.nvim_set_keymap('n', '<C-j>', '5j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', '5k', {noremap = true})
vim.api.nvim_set_keymap('v', '<C-j>', '5j', {noremap = true})
vim.api.nvim_set_keymap('v', '<C-k>', '5k', {noremap = true})

-- 背景設定
vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')
vim.cmd('highlight NonText ctermbg=NONE guibg=NONE')
vim.cmd('highlight SpecialKey ctermbg=NONE guibg=NONE')
vim.cmd('highlight EndOfBuffer ctermbg=NONE guibg=NONE')

-- ターミナル設定
vim.api.nvim_set_keymap('n', 'tt', '<cmd>terminal<CR>', {silent = true})
vim.api.nvim_set_keymap('n', 'tx', '<cmd>belowright new<CR><cmd>terminal<CR>', {silent = true})
vim.cmd('autocmd TermOpen * startinsert')
vim.cmd('autocmd TermOpen * setlocal norelativenumber')
vim.cmd('autocmd TermOpen * setlocal nonumber')

-- プラグイン設定
vim.cmd('call plug#begin(\'~/.vim/plugged\')')
vim.cmd('Plug \'vim-airline/vim-airline\'')
vim.cmd('Plug \'vim-airline/vim-airline-themes\'')
vim.cmd('Plug \'lambdalisue/fern.vim\'')
vim.cmd('Plug \'ryanoasis/vim-devicons\'')
vim.cmd('call plug#end()')

-- Airline設定
vim.o.laststatus = 2
vim.g.airline_extensions_tabline_enabled = 1
vim.g.airline_powerline_fonts = 1
vim.g.devicons_enable = 1
vim.g.airline_theme = 'luna'
vim.api.nvim_set_keymap('n', '<C-p>', '<Plug>AirlineSelectPrevTab', {})
vim.api.nvim_set_keymap('n', '<C-n>', '<Plug>AirlineSelectNextTab', {})

-- Fern設定
vim.api.nvim_set_keymap('n', '<C-f>', ':Fern %:h<CR>', {})

-- Netrwを無効化
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


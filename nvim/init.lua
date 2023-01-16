local set = vim.opt

set.number = true
set.relativenumber = true
set.colorcolumn = "80"
set.cursorline = true

set.termguicolors = true


local colorscheme = "monokai_pro"
local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

 if not ok then
	 vim.notify("colorscheme " .. colorscheme .. "not found!")
	 return
 end

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<C-h>', ":wincmd h<CR>")
map('n', '<C-j>', ":wincmd j<CR>")
map('n', '<C-k>', ":wincmd k<CR>")
map('n', '<C-l>', ":wincmd l<CR>")


map('v', '<C-c>', ":call Comment()<CR>")
map('v', '<C-u>', ":call UnComment()<CR>")








return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'phanviet/vim-monokai-pro'
	use 'vimlab/split-term.vim'
	use 'jiangmiao/auto-pairs'
	use 'machakann/vim-sandwich'
	use 'itchyny/lightline.vim'
	use 'Mr-Destructive/commenter.vim'
end)




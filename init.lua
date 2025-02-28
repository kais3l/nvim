vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"


require("config.lazy")
vim.keymap.set("n","<space><space>x","<cmd>source %<CR>")
vim.keymap.set("n","<space>x",":.lua<CR>")
vim.keymap.set("v","<space>x",":.lua<CR>")

-- Ctrl+] to go to the declaration of a particular variable
-- Ctrl+t to comeback to the previous position of the variable where you used Ctrl+]
-- grr to see all the references of that particular variable
-- grn to rename the variable
-- K(capital k) shows a hover window explaining(?) the variable(?)

vim.api.nvim_create_autocmd('TextYankPost',{
	desc = 'Highlight when yanking(copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank',{clear = true}),
	callback = function()
	    vim.highlight.on_yank()
	end,
})

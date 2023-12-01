require('nvim-tree').setup({
	view = {
		adaptive_size = true,
	},
	filters = {
		dotfiles = true,
	},
	renderer = {
		group_empty = true,
	},
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "NvimTree",
	callback = function()
		vim.wo.cursorline = true
	end
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

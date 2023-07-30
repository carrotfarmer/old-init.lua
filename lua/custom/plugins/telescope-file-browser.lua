-- telescope file explorer

return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		vim.keymap.set(
			"n",
			"<leader>b",
			":Telescope file_browser path=%:p:h select_buffer=true<CR>",
			{ noremap = true, desc = "Open File Explorer" }
		)
	end
}

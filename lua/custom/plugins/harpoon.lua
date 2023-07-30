-- harpoon config

return {
	'ThePrimeagen/harpoon',
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<C-a>", mark.add_file, { desc = "[A]dd buffer to harpoon" })
		vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu, { desc = "[H]arpoon menu" })

		vim.keymap.set("n", "<leader>ha", function() ui.nav_file(1) end, { desc = "Jump to first harpoon buffer" })
		vim.keymap.set("n", "<leader>hs", function() ui.nav_file(2) end, { desc = "Jump to second harpoon buffer" })
		vim.keymap.set("n", "<leader>hd", function() ui.nav_file(3) end, { desc = "Jump to third harpoon buffer" })
		vim.keymap.set("n", "<leader>hf", function() ui.nav_file(4) end, { desc = "Jump to fourth harpoon buffer" })
	end
}

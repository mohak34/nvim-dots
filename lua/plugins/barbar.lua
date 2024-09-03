return {
	{
		"romgrk/barbar.nvim",
		config = function()
			require("barbar").setup({
				show_tab_indicators = true,
				show_tab_close_buttons = true,
				show_close_icon = true,
				show_buffer_close_icons = true,
				show_buffer_icons = true,
				show_index = true,
				indicator_icon = "▎",
				buffer_close_icon = "",
				mappings = true,
				tabname_maxlen = 20,
				vim.keymap.set("n", "<A-,>", ":BufferPrevious<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-.>", ":BufferNext<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-c>", ":BufferClose<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-1>", ":BufferGoto 1<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-2>", ":BufferGoto 2<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-3>", ":BufferGoto 3<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-4>", ":BufferGoto 4<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-5>", ":BufferGoto 5<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-6>", ":BufferGoto 6<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-7>", ":BufferGoto 7<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-8>", ":BufferGoto 8<CR>", { noremap = true, silent = true }),
				vim.keymap.set("n", "<A-9>", ":BufferLast<CR>", { noremap = true, silent = true }),
				buffer_icons = true,
				buffer_icon = "",
				custom_filter = function(buf)
					if vim.bo[buf].filetype == "NvimTree" then
						return false
					end
					return true
				end,
			})
		end,
	},
}

return {

    'andweeb/presence.nvim',
    config = function()
        require("presence").setup({
            enable_line_number = false,
            show_time          = true,
            main_image         = "neovim",
        })
	end
}

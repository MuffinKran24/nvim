return { 
	{    
		'akinsho/toggleterm.nvim',
    	config = function()
      		require("toggleterm").setup{
          		size = 10,
          		open_mapping = [[<C-t>]],
          		direction = 'float'
      	}
    	end
	}
}

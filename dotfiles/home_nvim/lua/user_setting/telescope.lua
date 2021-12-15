local telescope = require('telescope')

telescope.setup {
    defaults = {
        prompt_prefix = "$ " 
     }
}

-- To get fzf loaded and working with telescope,
-- you need to call load_extension, somewhere after the setup function.
telescope.load_extension('fzf')
telescope.load_extension("notify")
telescope.load_extension('dap')
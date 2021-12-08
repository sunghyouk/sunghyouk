local iron = require('iron')

--iron.core.add_repl_definitions {
--    r = {
--        radian = {
--            command = {'radian', '--r-binary=/usr/local/bin/R'}
--        }
--    }
--}

iron.core.set_config {
    preferred = {
        python = 'ipython',
        r = 'R'
    },
    repl_open_cmd = "rightbelow 40 split"
}

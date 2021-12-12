local iron = require('iron')

iron.core.add_repl_definitions {
    r = {
        radian = {
            command = {'radian'}
        }
    }
}

iron.core.set_config {
    preferred = {
        python = 'ipython',
        r = 'radian'
    },
    repl_open_cmd = "botright vertical split"
}

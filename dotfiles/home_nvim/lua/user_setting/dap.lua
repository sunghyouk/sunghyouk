local dap = require('dap')
dap.adapters.python = {
    type = 'executable';
    command = os.getenv('HOME') .. '/Users/sunghyouk/opt/anaconda3';
    args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
            return '/Users/sunghyouk/opt/anaconda3/bin/python3'
        end;
    },
}

require('dap-python').setup('/Users/sunghyouk/opt/anaconda3')

-- Setting breakpoints via :lua require'dap'.toggle_breakpoint().

-- Call :lua require('dap').continue() to start debugging.

-- Stepping through code via :lua require'dap'.step_over() and :lua require'dap'.step_into().

-- Inspecting the state via the built-in REPL: :lua require'dap'.repl.open()
-- or using the widget UI (:help dap-widgets)

-- Use :lua require('dap-python').test_method() to debug the closest method above the cursor.

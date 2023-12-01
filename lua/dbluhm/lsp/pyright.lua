local pyright = {}
local util = require('lspconfig.util')

local function get_python_path(workspace)
  -- Use activated virtualenv.
  if vim.env.VIRTUAL_ENV then
    return util.path.join(vim.env.VIRTUAL_ENV, 'bin', 'python')
  end

  -- Find and use virtualenv in workspace directory.
  for _, pattern in ipairs({'*', '.*'}) do
    local match = vim.fn.glob(util.path.join(workspace, pattern, 'pyvenv.cfg'))
    if match ~= '' then
      return util.path.join(util.path.dirname(match), 'bin', 'python')
    end
  end

  -- Fallback to system Python.
  return exepath('python3') or exepath('python') or 'python'
end

function pyright.setup()
  require('lspconfig').pyright.setup {
    before_init = function(_, config)
      local pythonPath = get_python_path(config.root_dir)
      config.settings.python.pythonPath = pythonPath
    end,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
        }
      }
    }
  }
end

return pyright

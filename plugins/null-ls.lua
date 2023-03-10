return function(config)
  local null_ls = require "null-ls"
  config.sources = {

    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.jq,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.shfmt.with {
      args = { "-i2", "-cn", "-bn" },
    },
    null_ls.builtins.diagnostics.luacheck,
    null_ls.builtins.diagnostics.flake8,
    -- null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.mypy,
  }
  return config
end

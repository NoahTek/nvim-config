-- ~/.config/nvim/lua/plugins/go.lua

return {
  -- (1) Ensure the LazyVim Go extra is loaded if you rely on it
  { import = "lazyvim.plugins.extras.lang.go" },

  -- (2) Configure gopls specifically
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              -- This is the key setting for Inlay Hints in gopls
              ["ui.inlayhint.hints"] = {
                -- Shows parameter names at the call site (e.g., f(s: input, bitSize: 64))
                parameterNames = true,
                -- Shows field names in composite literals (e.g., struct{...})
                compositeLiteralFields = true,
                -- Shows type information for variables with implicit types (e.g., `number` in :=)
                assignVariableTypes = true,
                -- Shows constant values
                constantValues = true,
                -- Shows function/method return types
                functionTypeParameters = true,
              },
            },
          },
        },
      },
    },
  },
}

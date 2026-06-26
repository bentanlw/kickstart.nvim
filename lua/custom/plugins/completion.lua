local function gh(repo) return 'https://github.com/' .. repo end

-- Snippet engine
vim.pack.add { { src = gh 'L3MON4D3/LuaSnip', version = vim.version.range '2.*' } }
require('luasnip').setup {}

-- `friendly-snippets` contains a variety of premade snippets.
-- See: https://github.com/rafamadriz/friendly-snippets
-- vim.pack.add { gh 'rafamadriz/friendly-snippets' }
-- require('luasnip.loaders.from_vscode').lazy_load()

-- Autocomplete engine
-- See `:help blink-cmp-config-keymap` for defining your own keymap.
-- See `:help ins-completion` for understanding the 'default' preset.
vim.pack.add { { src = gh 'saghen/blink.cmp', version = vim.version.range '1.*' } }
require('blink.cmp').setup {
  keymap = {
    -- 'default': <c-y> to accept, <c-n>/<c-p> to select, <c-space> to open
    -- 'super-tab': tab to accept
    -- 'enter': enter to accept
    preset = 'default',

    -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
    --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
  },

  appearance = {
    -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    nerd_font_variant = 'mono',
  },

  completion = {
    -- Set `auto_show = true` to show documentation after a delay automatically.
    documentation = { auto_show = false, auto_show_delay_ms = 500 },
  },

  sources = {
    default = { 'lsp', 'path', 'snippets' },
  },

  snippets = { preset = 'luasnip' },

  -- By default uses the Lua fuzzy matcher. You may enable the optional rust
  -- implementation via `'prefer_rust_with_warning'`.
  -- See `:help blink-cmp-config-fuzzy`
  fuzzy = { implementation = 'lua' },

  signature = { enabled = true },
}

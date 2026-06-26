local function gh(repo) return 'https://github.com/' .. repo end

-- Only install nvim-web-devicons if we have a Nerd Font, since otherwise icons won't display properly.
if vim.g.have_nerd_font then vim.pack.add { gh 'nvim-tree/nvim-web-devicons' } end

-- You can easily change to a different colorscheme by swapping the plugin and colorscheme command below.
-- To see installed colorschemes: `:Telescope colorscheme`
vim.pack.add { gh 'folke/tokyonight.nvim' }
---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  },
}

-- This one has different styles: 'tokyonight-storm', 'tokyonight-moon', 'tokyonight-day'
vim.cmd.colorscheme 'tokyonight-night'

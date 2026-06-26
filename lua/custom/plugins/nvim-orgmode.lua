vim.pack.add {
  { src = 'https://github.com/nvim-orgmode/orgmode' },
}

-- GTD style setup
require('orgmode').setup {
  org_agenda_files = { '~/orgfiles/projects.org', '~/orgfiles/inbox.org' },
  org_default_notes_file = '~/orgfiles/inbox.org',

  -- capture template
  org_capture_templates = {
    t = {
      description = 'New Task',
      template = '* TODO %?\n %u',
      target = '~/orgfiles/inbox.org',
    },
    i = {
      description = 'Idea/Note',
      template = '* %?\n %u',
      target = '~/orgfiles/inbox.org',
    },
  },
}
-- Experimental LSP support
vim.lsp.enable 'org'

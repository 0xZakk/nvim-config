-- TODO: consider remapping <Leader>f to just s (for search, no conflict)
local telescope = require("telescope")
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local wk = require('which-key')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  file_ignore_patterns = { "node_modules", ".git" },
  defaults = {
    mappings = {
      -- close on q in normal mode
      n = {
        ["q"] = actions.close,
      },
      -- close on <esc> in insert mode
      i = {
        ["<esc>"] = actions.close,
      }
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end,
          ["q"] = actions.close,
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

-- Find Files
-- TODO: turn this into a dropdown
local file_search = function()
  builtin.find_files({
    no_ignore = false,
    hidden = true,
    layout_config = {
      prompt_position = "top",
    },
    previewer = false,
  })
end
vim.keymap.set('n', '<Leader>ff', file_search, { desc = "Find Files" })
-- vim.keymap.set('n', '<C-p>', file_search, { desc = "Find Files" })

vim.keymap.set('n', '<Leader>fg',
  function()
    builtin.live_grep({
      no_ignore = false,
      hidden = true,
      layout_config = {
        prompt_position = "top",
      },
    })
  end, { desc = "Find Grep" })

-- TODO: remap ls to this; put the prompt on top, with the list of buffers below
vim.keymap.set('n', '<Leader>fb',
  function()
    builtin.buffers({
      initial_mode = "normal",
      previewer = false,
    })
  end, { desc = "Find Buffers" })

vim.keymap.set('n', '<Leader>fh',
  function()
    builtin.help_tags()
  end, { desc = "Find Help" })

vim.keymap.set('n', '<Leader>;', function()
  builtin.resume()
end, { desc = "Resume last search" })

vim.keymap.set('n', '<Leader>ef', function()
  builtin.diagnostics({
    initial_mode = "normal",
    layout_config = {
      prompt_position = "top",
    },
  })
end, { desc = "Find Errors" })

vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    -- cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    -- initial_mode = "normal",
    layout_config = { height = 40 }
  })
end, { desc = "File Browser" })

vim.keymap.set("n", "<Leader>ft", ":TodoTelescope<CR>", { desc = "Find Todos" })

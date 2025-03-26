-- Telescope fuzzy finder
-- https://github.com/nvim-telescope/telescope.nvim
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")
    local fb_actions = require("telescope").extensions.file_browser.actions

    telescope.setup({
      file_ignore_patterns = { "node_modules", ".git" },
      defaults = {
        mappings = {
          n = { ["q"] = actions.close },
          i = { ["<esc>"] = actions.close },
        },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
          mappings = {
            i = {
              ["<C-w>"] = function() vim.cmd("normal vbd") end,
            },
            n = {
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function() vim.cmd("startinsert") end,
              ["q"] = actions.close,
            },
          },
        },
      },
    })

    telescope.load_extension("file_browser")

    -- Keymaps
    vim.keymap.set("n", "<Leader>ff", function()
      builtin.find_files({
        no_ignore = false,
        hidden = true,
        layout_config = { prompt_position = "top" },
        previewer = false,
      })
    end, { desc = "Find Files" })

    vim.keymap.set("n", "<Leader>fg", function()
      builtin.live_grep({
        no_ignore = false,
        hidden = true,
        layout_config = { prompt_position = "top" },
      })
    end, { desc = "Find Grep" })

    vim.keymap.set("n", "<Leader>fb", function()
      builtin.buffers({
        initial_mode = "normal",
        previewer = false,
      })
    end, { desc = "Find Buffers" })

    vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { desc = "Find Help" })

    vim.keymap.set("n", "<Leader>;", builtin.resume, { desc = "Resume last search" })

    vim.keymap.set("n", "<Leader>ef", function()
      builtin.diagnostics({
        initial_mode = "normal",
        layout_config = { prompt_position = "top" },
      })
    end, { desc = "Find Errors" })

    vim.keymap.set("n", "sf", function()
      telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        layout_config = { height = 40 },
      })
    end, { desc = "File Browser" })

    vim.keymap.set("n", "<Leader>ft", ":TodoTelescope<CR>", { desc = "Find Todos" })
  end,
}

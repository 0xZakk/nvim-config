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

    local function toggle_mode()
      local current_mode = vim.fn.mode()
      if current_mode == "n" then
        vim.cmd("startinsert")
      else
        vim.cmd("stopinsert")
      end
    end

    telescope.setup({
      defaults = {
        no_ignore = true,
        hidden = true,
        file_ignore_patterns = { "node_modules", ".git" },
        mappings = {
          n = {
            ["q"] = actions.close,
            ["/"] = toggle_mode,
          },
          i = {
            ["<esc>"] = actions.close,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["/"] = toggle_mode,
          },
        },
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
        }
      },
      extensions = {
        file_browser = {
          hijack_netrw = true,
          mappings = {
            i = {
              ["<C-w>"] = function() vim.cmd("normal vbd") end,
            },
            n = {
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["q"] = actions.close,
            },
          },
        },
      },
    })

    telescope.load_extension("file_browser")

    -- Set the project root for telescope
    local function get_project_root()
      local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
      if vim.v.shell_error == 0 then
        return git_root
      else
        return vim.loop.cwd()
      end
    end

    -- Wrapper function to set defaults across all pickers
    -- for project-specific pickers
    local function project_picker(picker, opts)
      opts = opts or {}
      opts.cwd = opts.cwd or get_project_root()
      require("telescope.builtin")[picker](opts)
    end

    -- Wrapper function to set defaults across all pickers
    -- for extensions
    local function project_extension(ext, picker, opts)
      opts = opts or {}
      opts.cwd = opts.cwd or get_project_root()
      opts.path = opts.path or opts.cwd
      require("telescope").extensions[ext][picker](opts)
    end

    -- Keymaps
    vim.keymap.set("n", "<Leader>ff", function()
      project_picker("find_files", {})
    end, { desc = "Find Files" })

    vim.keymap.set("n", "<Leader>fg", function()
      project_picker("live_grep", {})
    end, { desc = "Find Grep" })

    vim.keymap.set("n", "<Leader>fb", function()
      project_picker("buffers", {
        initial_mode = "normal",
      })
    end, { desc = "Find Buffers" })

    vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { desc = "Find Help" })

    vim.keymap.set("n", "<Leader>;", builtin.resume, { desc = "Resume last search" })

    vim.keymap.set("n", "<Leader>ef", function()
      project_picker("diagnostics", {
        initial_mode = "normal",
      })
    end, { desc = "Find Errors" })

    local function browse_files()
      project_extension("file_browser", "file_browser", {
        no_ignore = true,
        hidden = true,
        grouped = true,
        previewer = true,
        initial_mode = "normal",
      })
    end

    vim.keymap.set("n", "sf", browse_files, { desc = "File Browser" })
    -- vim.keymap.set("n", "<leader>kb", browse_files, { desc = "File Browser" })

    vim.keymap.set("n", "<Leader>ft", function()
      project_extension("todo-comments", "todo", {})
    end, { desc = "Find Todos" })
  end,
}

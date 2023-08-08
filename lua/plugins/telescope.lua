local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ff", builtin.find_files, desc = "Find Files in current working directory, .gitignore is ignored." },
      {
        "<leader>fs",
        builtin.live_grep,
        desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore. ",
      },
      {
        "<leader>fc",
        builtin.grep_string,
        desc = "Searches for the string under your cursor or selection in your current working directory",
      },
      { "<leader>fb", builtin.buffers, desc = "List open buffers in current instance" },
      { "<leader>fh", builtin.help_tags, desc = "List available help tags" },
      { "<leader>gc", builtin.git_commits, desc = "Lists git commits with diff preview" },
      {
        "<leader>gfc",
        builtin.git_bcommits,
        desc = "Lists buffer's git commits with diff preview and checks them out on <cr>",
      },
      { "<leader>gb", builtin.git_branches, desc = "Lists all branches with log preview" },
      { "<leader>gs", builtin.git_status, desc = "Lists current changes per file with diff preview and add action." },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          i = {
            ["<C-k>"] = function(...)
              return actions.move_selection_previous(...)
            end,
            ["<C-j>"] = function(...)
              return actions.move_selection_next(...)
            end,
            ["<C-x>"] = function(...)
              return actions.close(...)
            end,
          },
        },
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}

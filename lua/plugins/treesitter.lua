require("nvim-treesitter.configs").setup({
  -- list of parsers which are sure to be installed
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "java",
    "json",
    "javascript",
    "typescript",
    "yaml",
    "css",
    "scss",
    "bash",
    "dockerfile",
    "gitignore",
    "query",
  },
  auto_install = true, -- auto install parsers mentioned above
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
  autopairs = { enable = true },
  autotags = { enable = true },
  ignore_install = {},
})

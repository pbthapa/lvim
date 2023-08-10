return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "cpp", "java", "dockerfile", "yaml" },
      autopairs = { enable = true },
      autotags = { enable = true },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
      sync_install = false,
    })
  end,
}

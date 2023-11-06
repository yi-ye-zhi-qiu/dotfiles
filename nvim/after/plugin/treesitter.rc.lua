local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    -- Avoid no indentation in python files
    -- https://github.com/nvim-treesitter/nvim-treesitter/issues/1136
    disable = {
      'python'
    },
  },
  ensure_installed = {
    "tsx",
    "python",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
}


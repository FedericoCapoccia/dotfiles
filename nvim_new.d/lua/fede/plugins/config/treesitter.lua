local M = {}

function M.setup()
  local opts = {
    highlight = {
      enable = true,
    },

    indent = { enable = true },

    autotag = {
      enable = true,
    },

    ensure_installed = {
      "lua",
      "vim",
      "gitignore",
      "c",
      "cpp",
      "cmake",
      "make",
      "meson",
      "rust",
      "toml",
      "json",
      "xml",
      "html",
      "javascript",
      "typescript",
      "css",
      "regex",
      "bash",
      "markdown",
      "markdown_inline",
    },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }

  require("nvim-treesitter.configs").setup(opts)
end

return M

local M = {}

function M.setup()
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle NeoTree" })
  vim.keymap.set("n", "<leader>e", ":Neotree focus <CR>", { noremap = true, silent = true, desc = "Focus NeoTree" })
  require("neo-tree").setup({
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      }
    }
  })
end

return M

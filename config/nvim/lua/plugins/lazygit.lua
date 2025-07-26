return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- Optional but recommended for floating window borders
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- Add a keymap (e.g., <leader>gg where <leader> is space by default in LazyVim)
  keys = {
    { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
  },
}

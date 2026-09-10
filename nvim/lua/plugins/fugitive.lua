return {
  "tpope/vim-fugitive",
  cmd = {
    "G",
    "Git",
    "Gvdiffsplit",
  },
  keys = {
    { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame" },
    { "<leader>gvd", "<cmd>Gvdiffsplit<cr>", desc = "Git vertical diff" },
    { "<leader>gm", "<cmd>Git mergetool<cr>", desc = "Git mergetool" },
  },
}

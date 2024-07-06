require "nvchad.mappings"
local map = vim.keymap.set
-- helpers
map({ "n", "v" }, "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
map({ "n", "v" }, "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })
map({ "n", "v" }, ";", ":", { desc = "CMD enter command mode" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual block down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move visual block up" })

map("n", "J", "mzJ`z", { desc = "???" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })
map("n", "n", "nzzzv", { desc = "???" })
map("n", "N", "Nzzzv", { desc = "???" })

-- Undotree
map({ "n", "v" }, "<leader>u", ":UndotreeToggle<CR>:UndotreeFocus<CR>", { desc = "Undotree" })

-- Telescope
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>f?", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fh", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>fc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>fs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>ft", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>fu", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "telescope find keymaps" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)

-- Conform
map("n", "<leader>cf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

-- Unset tab keymap (tabufline disabled)
vim.keymap.del("n", "<tab>")
vim.keymap.del("n", "<S-tab>")

vim.g.mapleader = " "

local keymap = vim.keymap

--essentials
keymap.set("n", "<C-s>", "<cmd>w<CR>", {desc="Save file with ctrl-s"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", {desc="Split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc="Split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc="Make splits equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc="Close current split"})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-Tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

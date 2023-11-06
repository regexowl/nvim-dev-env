vim.g.mapleader = " "

local keymap = vim.keymap

-- windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current window

keymap.set("n", "<leader>h", "<C-w>h") -- move left
keymap.set("n", "<leader>j", "<C-w>j") -- move down
keymap.set("n", "<leader>k", "<C-w>k") -- move up
keymap.set("n", "<leader>l", "<C-w>l") -- move right

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-------------
-- Plugins --
-------------
keymap.set("n", "<F2>", ":NvimTreeToggle<CR>") -- toggle NvimTree
keymap.set("n", "<F3>", ":ToggleTerm<CR>") -- toggle terminal
keymap.set("n", "<leader>bt", ":BlamerToggle<CR>") -- toggle BlamerToggle

-- Telescop
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>") -- find string in current working directory as you type
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>") -- list available help tags


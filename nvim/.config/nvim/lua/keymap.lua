local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("", "<Right>", "<Nop>")
keymap.set("", "<Up>", "<Nop>")
keymap.set("", "<Left>", "<Nop>")
keymap.set("", "<Down>", "<Nop>")

keymap.set("", "<Leader>tn", "<cmd>tabnew<cr><cmd>NvimTreeOpen<cr>")
keymap.set("", "<Leader>tc", "<cmd>tabclose<cr>")

keymap.set("", "<Leader>ll", '<cmd>luafile %<cr><cmd>echo "config reloaded"<cr>')

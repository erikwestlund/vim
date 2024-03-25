vim.g.mapleader = " "

-- Enter vim file browser
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- In visual mode, move highlighted text up and down.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Concatenates line below with current line and keeps cursor in same place
vim.keymap.set("n", "J", "mzJ`z")

-- Scrolls down/up but keeps the cursor centered.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- lets cursor stay in middle of screen when searching for terms.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when pasting over text, keep original copied text in buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yanks into system clipboard so can use an ordinary paste
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes to void register and doesn't copy
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- keeps ctrl+c and escape behavior identical
vim.keymap.set("i", "<C-c>", "<Esc>")

-- avoid default Q behavior.
vim.keymap.set("n", "Q", "<nop>")

-- allow project switching with tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format lsp buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- starts replacing the word you are on; similar to multiple cursors
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader><leader>", function()
        vim.cmd("so")
end)

martin.morales@MX-IT06123 config % cat keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua A
--
-- REQUIRED
--
local harpoon = require("harpoon")
local oil = require("oil")
local which_key = require("which-key")
which_key.register({
  ["<leader>"] = {
    o = {
      name = "Obsidian",
    },
  },
})
harpoon:setup()
oil.setup()
-- REQUIRED

--- OBSIDIAN ---
vim.keymap.set(
  "n",
  "<leader>oc",
  "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>",
  { desc = "Obsidian Check Checkbox" }
)
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert template" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show backlinks" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show links" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create new note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search in workspace" })
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick switch" })
----------------
--- OIL ---
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Delete all buffers except current one --
vim.keymap.set(
  "n",
  "<leader>bq",
  '<ESC>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers except current one" }
)
-----------
--- HARPOON 2 ---
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end, { desc = "Add harpoon mark" })

vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-M-h>", function()
  harpoon:list():select(1)
end)

vim.keymap.set("n", "<C-M-j>", function()
  harpoon:list():select(2)
end)

vim.keymap.set("n", "<C-M-k>", function()
  harpoon:list():select(3)
end)

vim.keymap.set("n", "<C-M-l>", function()
  harpoon:list():select(4)
end)

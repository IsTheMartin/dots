return {
	"epwalsh/obsidian.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "Martin vault",
				path = "/Users/martin.morales/Library/CloudStorage/GoogleDrive-themartin93@gmail.com/My Drive/Obsidian vaults/Martin Vault",
			},
		},
		completion = {
			nvim_cmp = true,
			min_chars = 3,
		},
		notes_subdir = "00 - Inbox",
		new_notes_location = "00 - Inbox",
		attachments = {
			img_folder = "03 - Resources/Attachments",
		},
		daily_notes = {
			folder = "03 - Resources/Templates",
			template = "/Daily note.md",
		},
		mappings = {
			-- "Obsidian follow"
			["<leader>of"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- Toggle check-boxes "obsidian done"
			["<leader>od"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
			["<leader>ont"] = {
				action = function()
					return require("obsidian").util.insert_template("Daily note")
				end,
				opts = { buffer = true },
			},
		},
		note_frontmatter_func = function(note)
			-- This is equivalent to the default frontmatter function.
			local out = { id = note.id, aliases = note.aliases, tags = note.tags }

			-- `note.metadata` contains any manually added fields in the frontmatter.
			if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
				for k, v in pairs(note.metadata) do
					out[k] = v
				end
			end
			return out
		end,

		note_id_func = function(title)
			-- Create note IDs in a Zettelkasten format with a timestamp and a suffix
			-- In this case a note with the little 'My new note' will be given an ID that looks
			-- like '1623231234-my-new-note', and therefore the file name '1623231234-my-new-note.md'
			local suffix = ""
			if title ~= nil then
				-- If title is given, transform it into a valid filename.
				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				-- If title is null, just add 4 random uppercase letters to the suffix.
				for _ = 1, 4 do
					suffix = suffix .. string.char(math.random(65, 90))
				end
			end
			return tostring(os.date("%Y-%m-%d")) .. "-" .. suffix
		end,

		templates = {
			subdir = "03 - Resources/Templates",
			tags = "draft",
		},
	},
}
